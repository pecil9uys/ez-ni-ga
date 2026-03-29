-- GLOBAL IMPORTS
local LP = getgenv().LP
local Workspace = getgenv().Workspace
local RunService = getgenv().RunService
local UserInputService = getgenv().UserInputService
local HubConfig = getgenv().HubConfig
local QuestProgression = getgenv().QuestProgression
local CombatRemote = getgenv().CombatRemote
local AbilityRemote = getgenv().AbilityRemote
local AllocateStatRemote = getgenv().AllocateStatRemote
local ResetStatsRemote = getgenv().ResetStatsRemote
local UseItemRemote = getgenv().UseItemRemote
local TraitRerollRemote = getgenv().TraitRerollRemote
local RerollSingleStatRemote = getgenv().RerollSingleStatRemote
local scriptConnections = getgenv().scriptConnections
local SummonBossRemote = getgenv().SummonBossRemote
local getCurrentIsland = getgenv().getCurrentIsland
local getQuestDataByName = getgenv().getQuestDataByName
local getIslandByTarget = getgenv().getIslandByTarget
local isQuestActive = getgenv().isQuestActive
local SmartIslandTeleport = getgenv().SmartIslandTeleport
local SafeTeleport = getgenv().SafeTeleport
local getValidTarget = getgenv().getValidTarget
local executeAttackLogic = getgenv().executeAttackLogic
local unfreezeCharacter = getgenv().unfreezeCharacter
local isSafePrompt = getgenv().isSafePrompt
local TeleportAndCollectFruit = getgenv().TeleportAndCollectFruit

-- Fruit Monitor (Sniper)
table.insert(scriptConnections, Workspace.DescendantAdded:Connect(TeleportAndCollectFruit))

getgenv().CurrentIslandCache = "Starter"

-- =========================================================================
-- 📡 SERVER CHAT MONITOR (PASSIVE BOSS SNIPER)
-- =========================================================================
getgenv().BossState = getgenv().BossState or {}

local function MonitorChat(message)
    if not HubConfig.AutoBoss or #HubConfig.SelectedBosses == 0 then return end
    
    local msg = string.lower(message)
    local msgNoSpaces = msg:gsub("%s+", "") -- Remove spaces to avoid bugs with compound names
    
    if msg:find("spawned") then
        for _, bossName in ipairs(HubConfig.SelectedBosses) do
            local baseName = string.lower(bossName:gsub("Boss", ""):gsub("Mini", "")):gsub("%s+", "")
            if msgNoSpaces:find(baseName) then
                getgenv().BossState[bossName] = "Alive"
                getgenv().BossPatience = 0 -- Resets patience immediately
                if getgenv().SendToast then
                    getgenv().SendToast("🚨 Boss Sniper", bossName .. " spawnou! Interceptando...", 4)
                end
            end
        end
    elseif msg:find("defeated") then
        for _, bossName in ipairs(HubConfig.SelectedBosses) do
            local baseName = string.lower(bossName:gsub("Boss", ""):gsub("Mini", "")):gsub("%s+", "")
            if msgNoSpaces:find(baseName) then
                getgenv().BossState[bossName] = "Dead"
                getgenv().BossPatience = 0
            end
        end
    end
end

-- Removed the if/else that bugged the reading. Now it connects to both forced equally like in the test script!
pcall(function()
    local TextChatService = game:GetService("TextChatService")
    if TextChatService then
        table.insert(scriptConnections, TextChatService.MessageReceived:Connect(function(textChatMessage)
            if textChatMessage and textChatMessage.Text then MonitorChat(textChatMessage.Text) end
        end))
    end
end)

pcall(function()
    local RS = game:GetService("ReplicatedStorage")
    local defaultChat = RS:FindFirstChild("DefaultChatSystemChatEvents")
    if defaultChat and defaultChat:FindFirstChild("OnMessageDoneFiltering") then
        table.insert(scriptConnections, defaultChat.OnMessageDoneFiltering.OnClientEvent:Connect(function(messageData)
            if messageData and messageData.Message then MonitorChat(messageData.Message) end
        end))
    end
end)

-- =========================================================================
-- 🧠 SLOW TICKER: BRAIN AND PRIORITIES (Runs every 1 second)
-- =========================================================================
task.spawn(function()
    while getgenv().isRunning and task.wait(1) do
        getgenv().CurrentIslandCache = getCurrentIsland()
        local myIsland = getgenv().CurrentIslandCache
        local hasAction = false

        -- Detects if player turned on AutoBoss NOW to force a new scan
        getgenv().BossState = getgenv().BossState or {}
        if HubConfig.AutoBoss and not getgenv().WasAutoBossOn then
            for _, b in ipairs(HubConfig.SelectedBosses) do
                getgenv().BossState[b] = "PendingCheck"
            end
            if getgenv().SendToast then getgenv().SendToast("🔍 Scan", "Starting boss check...", 3) end
        end
        getgenv().WasAutoBossOn = HubConfig.AutoBoss

        if HubConfig.AutoBoss then
            for _, b in ipairs(HubConfig.SelectedBosses) do
                if not getgenv().BossState[b] then
                    getgenv().BossState[b] = "PendingCheck"
                end
            end
        end

        -- =========================================================
        -- PRIORITY 1: AUTO SUMMON (Exclusive Summon)
        -- =========================================================
        if not hasAction and HubConfig.AutoSummon and HubConfig.SelectedSummonBoss ~= "None" then
            local sBoss = HubConfig.SelectedSummonBoss
            local targetIsland = "Boss Island"
            local bTarget = getValidTarget("Boss", sBoss)
            
            if bTarget then
                if myIsland and targetIsland and myIsland ~= targetIsland then
                    SmartIslandTeleport(targetIsland)
                    hasAction = true
                else
                    getgenv().FarmTarget = bTarget
                    hasAction = true
                end
            else
                if myIsland and targetIsland and myIsland ~= targetIsland then
                    SmartIslandTeleport(targetIsland)
                    hasAction = true
                else
                    getgenv().LastSummonTime = getgenv().LastSummonTime or 0
                    if tick() - getgenv().LastSummonTime > 5 then 
                        if SummonBossRemote then
                            if getgenv().SendToast then getgenv().SendToast("🔮 Summon", "Summoning: " .. sBoss, 3) end
                            SummonBossRemote:FireServer(sBoss)
                            getgenv().LastSummonTime = tick()
                            task.wait(2) 
                        end
                    end
                    hasAction = true
                end
            end
        end

        -- =========================================================
        -- PRIORITY 2: AUTO BOSS (PASSIVE SNIPER & SCAN)
        -- =========================================================
        if not hasAction and HubConfig.AutoBoss and #HubConfig.SelectedBosses > 0 then
            local bossTargetName = nil
            local targetIsland = nil
            
            if getgenv().FarmTarget and getgenv().FarmTarget:FindFirstChild("Humanoid") and getgenv().FarmTarget.Humanoid.Health > 0 then
                local currentTargetName = getgenv().FarmTarget.Name
                for _, b in ipairs(HubConfig.SelectedBosses) do
                    if currentTargetName:find(b) or currentTargetName:find(b:gsub("Boss", "")) then
                        bossTargetName = b
                        targetIsland = myIsland
                        break
                    end
                end
            end
            
            if not bossTargetName then
                for _, b in ipairs(HubConfig.SelectedBosses) do
                    if getgenv().BossState[b] == "Alive" then
                        bossTargetName = b
                        targetIsland = getIslandByTarget("Boss", b)
                        break
                    end
                end
                if not bossTargetName then
                    for _, b in ipairs(HubConfig.SelectedBosses) do
                        if getgenv().BossState[b] == "PendingCheck" then
                            bossTargetName = b
                            targetIsland = getIslandByTarget("Boss", b)
                            break
                        end
                    end
                end
            end
            
            if bossTargetName and targetIsland then
                local bTarget = getValidTarget("Boss", bossTargetName)
                
                if bTarget then
                    getgenv().BossState[bossTargetName] = "Alive" 
                    getgenv().BossPatience = 0 
                    getgenv().FarmTarget = bTarget
                    getgenv().InteractionTarget = nil
                    hasAction = true
                else
                    if myIsland and targetIsland and myIsland ~= targetIsland then
                        local success = SmartIslandTeleport(targetIsland)
                        if success then task.wait(3) end
                        hasAction = true
                    else
                        getgenv().BossPatience = (getgenv().BossPatience or 0) + 1
                        
                        local maxPatience = (getgenv().BossState[bossTargetName] == "Alive") and 10 or 4
                        
                        if getgenv().BossPatience > maxPatience then
                            getgenv().BossState[bossTargetName] = "Dead"
                            getgenv().BossPatience = 0
                            getgenv().FarmTarget = nil
                        else
                            getgenv().FarmTarget = nil
                            hasAction = true 
                        end
                    end
                end
            end
        end

        -- =========================================================
        -- PRIORITY 3: AUTO LEVEL & AUTO QUEST
        -- =========================================================
        if not hasAction and (HubConfig.AutoFarmMaxLevel or HubConfig.AutoQuest) then
            if HubConfig.AutoFarmMaxLevel then
                local data = LP:FindFirstChild("Data")
                local currentLevel = data and data:FindFirstChild("Level") and data.Level.Value or 1
                local bestIsland = "Starter"; local bestQuest = "Quest 1: Mobs (Thief)"
                
                for _, q in ipairs(QuestProgression) do
                    if currentLevel >= q.MinLevel then bestIsland = q.Island; bestQuest = q.Quest else break end
                end
                HubConfig.SelectedQuestIsland = bestIsland
                HubConfig.SelectedQuest = bestQuest
            end

            if HubConfig.SelectedQuest then
                local questData = getQuestDataByName(HubConfig.SelectedQuestIsland, HubConfig.SelectedQuest)
                if questData then
                    local npcIsland = HubConfig.SelectedQuestIsland
                    local mobIsland = getIslandByTarget(questData.Type or "Mob", questData.Target) or npcIsland
                    
                    if not isQuestActive(questData) then
                        if myIsland and myIsland ~= npcIsland and npcIsland ~= "Events (Timed Bosses)" then
                            SmartIslandTeleport(npcIsland)
                            hasAction = true 
                        else
                            local npc = Workspace:FindFirstChild("ServiceNPCs") and Workspace.ServiceNPCs:FindFirstChild(questData.NPC)
                            getgenv().InteractionTarget = npc
                            getgenv().FarmTarget = nil
                            hasAction = true 
                        end
                    else
                        if myIsland and myIsland ~= mobIsland and mobIsland ~= "Events (Timed Bosses)" then
                            SmartIslandTeleport(mobIsland)
                            hasAction = true
                        else
                            getgenv().InteractionTarget = nil
                            getgenv().FarmTarget = getValidTarget(questData.Type or "Mob", questData.Target)
                            hasAction = true
                        end
                    end
                end
            end
        end

        -- =========================================================
        -- PRIORITY 4: AUTO DUMMY & AUTO MOB MANUAL
        -- =========================================================
        if not hasAction then
            if HubConfig.AutoDummy then 
                getgenv().FarmTarget = getValidTarget("Dummy", "")
                hasAction = true 
            elseif HubConfig.AutoFarm and HubConfig.SelectedMob ~= "None" then 
                local targetIsland = getIslandByTarget("Mob", HubConfig.SelectedMob)
                if myIsland and targetIsland and myIsland ~= targetIsland then
                    SmartIslandTeleport(targetIsland); hasAction = true
                else
                    getgenv().FarmTarget = getValidTarget("Mob", HubConfig.SelectedMob)
                    hasAction = true
                end
            end
        end

        if not hasAction then 
            getgenv().FarmTarget = nil
            getgenv().InteractionTarget = nil
        end
    end
end)

-- =========================================================================
-- ⚡ FAST TICKER: MUSCLES (ACTION & FLIGHT ONLY - Runs every 0.05 sec)
-- =========================================================================
task.spawn(function()
    while getgenv().isRunning and task.wait(0.05) do
        local attacking = false

        if getgenv().InteractionTarget then
            local npc = getgenv().InteractionTarget
            if npc and npc:FindFirstChild("HumanoidRootPart") then
                local tween = SafeTeleport(npc, 1.5)
                if tween then
                    tween.Completed:Wait()
                    task.wait(0.4)
                    local prompt = npc:FindFirstChildWhichIsA("ProximityPrompt", true)
                    if prompt and fireproximityprompt then fireproximityprompt(prompt) end
                    task.wait(1) 
                    getgenv().InteractionTarget = nil
                end
            end
            attacking = true

        elseif getgenv().FarmTarget then
            attacking = executeAttackLogic(getgenv().FarmTarget)
        end

        if not attacking then 
            pcall(function() unfreezeCharacter(LP.Character) end) 
        end
    end
end)

-- COMBAT SPAM
task.spawn(function()
    while getgenv().isRunning and task.wait(0.1) do
        local ft = getgenv().FarmTarget
        if ft and ft:FindFirstChild("Humanoid") and ft.Humanoid.Health > 0 then
            pcall(function()
                if CombatRemote then CombatRemote:FireServer() end
                if AbilityRemote then for i = 1, 4 do AbilityRemote:FireServer(i) end end
            end)
        end
    end
end)

-- TRADITIONAL MAP COLLECTION
task.spawn(function()
    while getgenv().isRunning and task.wait(1) do
        pcall(function()
            if not (HubConfig.AutoCollect.Fruits or HubConfig.AutoCollect.Hogyoku or HubConfig.AutoCollect.Puzzles or HubConfig.AutoCollect.Chests) then return end
            for _, obj in pairs(Workspace:GetDescendants()) do
                local name = string.lower(obj.Name)
                local isFruit = HubConfig.AutoCollect.Fruits and (name:find("fruit") or name:find("fruta")) and not name:find("dealer") and not name:find("npc")
                local isHogyoku = HubConfig.AutoCollect.Hogyoku and name:find("hogyoku")
                local isPuzzle = HubConfig.AutoCollect.Puzzles and (name:find("puzzlepiece") or name:find("puzzle"))
                local isChest = HubConfig.AutoCollect.Chests and (name:find("box") or name:find("chest"))
                
                if isFruit or isHogyoku or isPuzzle or isChest then
                    local prompt = obj:FindFirstChildWhichIsA("ProximityPrompt", true) or (obj.Parent and obj.Parent:FindFirstChildWhichIsA("ProximityPrompt", true))
                    local clicker = obj:FindFirstChildWhichIsA("ClickDetector", true)
                    if prompt or clicker then
                        if prompt and not isSafePrompt(prompt) then continue end
                        local tween = SafeTeleport(obj, 1.5)
                        if tween then
                            tween.Completed:Wait(); task.wait(0.3)
                            if prompt and fireproximityprompt then fireproximityprompt(prompt) end
                            if clicker and fireclickdetector then fireclickdetector(clicker) end
                        end
                    end
                end
            end
        end)
    end
end)

-- GROUP REWARD
task.spawn(function()
    while getgenv().isRunning and task.wait(5) do
        if HubConfig.AutoGroupReward then
            pcall(function()
                local serviceFolder = Workspace:FindFirstChild("ServiceNPCs")
                local groupNpc = serviceFolder and serviceFolder:FindFirstChild("GroupRewardNPC")
                if groupNpc then
                    local prompt = groupNpc:FindFirstChildWhichIsA("ProximityPrompt", true)
                    if prompt and fireproximityprompt then
                        local tween = SafeTeleport(groupNpc, 3)
                        if tween then tween.Completed:Wait() task.wait(0.5) fireproximityprompt(prompt) end
                    end
                end
            end)
        end
    end
end)

-- AUTO STATS
task.spawn(function()
    while getgenv().isRunning and task.wait(0.5) do
        if HubConfig.AutoStats then
            pcall(function()
                local data = LP:FindFirstChild("Data")
                if data and data:FindFirstChild("StatPoints") and data.StatPoints.Value > 0 and AllocateStatRemote then
                    local availablePts = data.StatPoints.Value
                    local selectedCount = #HubConfig.SelectedStats
                    if selectedCount > 0 then
                        local basePoints = math.floor(availablePts / selectedCount)
                        local remainder = availablePts % selectedCount
                        for i, stat in ipairs(HubConfig.SelectedStats) do
                            local pointsToAllocate = basePoints
                            if i <= remainder then pointsToAllocate = pointsToAllocate + 1 end
                            if pointsToAllocate > 0 then AllocateStatRemote:FireServer(stat, pointsToAllocate) end
                        end
                    end
                end
            end)
        end
    end
end)

-- 📦 AUTO REROLL & INVENTORY CHESTS (UPDATED)
task.spawn(function()
    while getgenv().isRunning and task.wait(1.5) do
        pcall(function()
            if UseItemRemote then
                if HubConfig.AutoReroll.Race then
                    local currentRace = LP:GetAttribute("CurrentRace")
                    if currentRace and currentRace ~= HubConfig.AutoReroll.TargetRace then UseItemRemote:FireServer("Use", "Race Reroll", 1, false) else HubConfig.AutoReroll.Race = false end
                end
                if HubConfig.AutoReroll.Clan then
                    local currentClan = LP:GetAttribute("CurrentClan")
                    if currentClan and currentClan ~= HubConfig.AutoReroll.TargetClan then UseItemRemote:FireServer("Use", "Clan Reroll", 1, false) else HubConfig.AutoReroll.Clan = false end
                end
                
                local amount = HubConfig.ChestOpenAmount or 1
                
                if HubConfig.AutoOpenChests.Common then UseItemRemote:FireServer("Use", "Common Chest", amount, false) task.wait(0.2) end
                if HubConfig.AutoOpenChests.Rare then UseItemRemote:FireServer("Use", "Rare Chest", amount, false) task.wait(0.2) end
                if HubConfig.AutoOpenChests.Epic then UseItemRemote:FireServer("Use", "Epic Chest", amount, false) task.wait(0.2) end
                if HubConfig.AutoOpenChests.Legendary then UseItemRemote:FireServer("Use", "Legendary Chest", amount, false) task.wait(0.2) end
                if HubConfig.AutoOpenChests.Mythical then UseItemRemote:FireServer("Use", "Mythical Chest", amount, false) task.wait(0.2) end
            end
            if HubConfig.AutoTrait and TraitRerollRemote then TraitRerollRemote:FireServer() end
            if HubConfig.AutoStatReroll and RerollSingleStatRemote then RerollSingleStatRemote:InvokeServer(HubConfig.SelectedStatToReroll) end
        end)
    end
end)

-- SUPER SPEED AND NATIVE HACKS
table.insert(scriptConnections, RunService.Heartbeat:Connect(function()
    if HubConfig.SuperSpeed then
        local char = LP.Character
        local hum = char and char:FindFirstChild("Humanoid")
        if hum and hum.MoveDirection.Magnitude > 0 then char:TranslateBy(hum.MoveDirection * HubConfig.SpeedMultiplier) end
    end
    if HubConfig.HacksNativos.ExtraJump then pcall(function() LP:SetAttribute("RaceExtraJumps", 5) end) end
end))

table.insert(scriptConnections, UserInputService.JumpRequest:Connect(function()
    if HubConfig.InfJump then
        local hum = LP.Character and LP.Character:FindFirstChild("Humanoid")
        if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
    end
end))
