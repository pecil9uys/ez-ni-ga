-- ROBLOX SERVICES
getgenv().Players = game:GetService("Players")
getgenv().RS = game:GetService("ReplicatedStorage")
getgenv().Workspace = game:GetService("Workspace")
getgenv().CoreGui = game:GetService("CoreGui")
getgenv().UserInputService = game:GetService("UserInputService")
getgenv().TweenService = game:GetService("TweenService")
getgenv().RunService = game:GetService("RunService")
getgenv().VirtualUser = game:GetService("VirtualUser")
getgenv().HttpService = game:GetService("HttpService")
getgenv().LP = Players.LocalPlayer

-- 🛡️ OFFICIAL ANTI-AFK SYSTEM (Double Click)
pcall(function()
    getgenv().Players.LocalPlayer.Idled:Connect(function()
        getgenv().VirtualUser:CaptureController()
        getgenv().VirtualUser:ClickButton1(Vector2.new()) -- Simulates Left Button
        getgenv().VirtualUser:ClickButton2(Vector2.new()) -- Simulates Right Button
    end)
end)

-- REMOTES
getgenv().CombatRemote = nil
getgenv().AbilityRemote = nil
getgenv().TeleportRemote = nil
getgenv().AllocateStatRemote = nil
getgenv().ResetStatsRemote = nil
getgenv().UseItemRemote = nil
getgenv().TitleEquipRemote = nil
getgenv().DisplayTitleEquipRemote = nil
getgenv().TraitRerollRemote = nil
getgenv().RerollSingleStatRemote = nil
getgenv().HakiWeaponRemote = nil
getgenv().HakiObservationRemote = nil
getgenv().SummonBossRemote = nil

pcall(function()
    getgenv().CombatRemote = RS:WaitForChild("CombatSystem"):WaitForChild("Remotes"):WaitForChild("RequestHit")
    getgenv().AbilityRemote = RS:WaitForChild("AbilitySystem"):WaitForChild("Remotes"):WaitForChild("RequestAbility")
    getgenv().TeleportRemote = RS:FindFirstChild("TeleportToPortal", true)
    getgenv().AllocateStatRemote = RS:FindFirstChild("AllocateStat", true)
    getgenv().ResetStatsRemote = RS:FindFirstChild("ResetStats", true)
    getgenv().UseItemRemote = RS:FindFirstChild("UseItem", true)
    getgenv().TitleEquipRemote = RS:FindFirstChild("TitleEquip", true)
    getgenv().DisplayTitleEquipRemote = RS:FindFirstChild("DisplayTitleEquip", true)
    getgenv().TraitRerollRemote = RS:FindFirstChild("TraitReroll", true)
    getgenv().RerollSingleStatRemote = RS:FindFirstChild("RerollSingleStat", true)
    getgenv().HakiWeaponRemote = RS:WaitForChild("RemoteEvents"):WaitForChild("HakiRemote")
    getgenv().HakiObservationRemote = RS:WaitForChild("RemoteEvents"):WaitForChild("ObservationHakiRemote")
    getgenv().SummonBossRemote = RS:FindFirstChild("RequestSummonBoss", true) or RS:WaitForChild("Remotes"):WaitForChild("RequestSummonBoss")
end)

-- TELEPORT DICTIONARY
getgenv().TeleportMap = {
    ["Starter"] = "Starter", ["Jungle"] = "Jungle", ["Desert"] = "Desert",
    ["Snow"] = "Snow", ["Sailor"] = "Sailor", ["Shibuya Station"] = "Shibuya",
    ["Hueco Mundo"] = "HuecoMundo", ["Boss Island"] = "Boss", ["Dungeon"] = "Dungeon",
    ["Shinjuku"] = "Shinjuku", ["Slime"] = "Slime", ["Academy"] = "Academy",
    ["Judgement"] = "Judgement", ["Soul Society"] = "SoulSociety"
}

-- SMART DATA MAP
getgenv().IslandDataMap = {
    ["Starter"] = { Mobs = {"Thief"}, Bosses = {"ThiefBoss"} },
    ["Jungle"] = { Mobs = {"Monkey"}, Bosses = {"MonkeyBoss"} },
    ["Desert"] = { Mobs = {"DesertBandit"}, Bosses = {"DesertBoss"} },
    ["Snow"] = { Mobs = {"FrostRogue"}, Bosses = {"SnowBoss"} },
    ["Sailor"] = { Mobs = {}, Bosses = {"JinwooBoss", "AlucardBoss"} }, 
    ["Shibuya"] = { Mobs = {"Sorcerer"}, Bosses = {"PandaMiniBoss", "YujiBoss", "SukunaBoss", "GojoBoss"} },
    ["Hueco Mundo"] = { Mobs = {"Hollow"}, Bosses = {"AizenBoss"} },
    ["Shinjuku"] = { Mobs = {"Curse", "StrongSorcerer"}, Bosses = {} },
    ["Slime"] = { Mobs = {"Slime"}, Bosses = {} },
    ["Academy"] = { Mobs = {"AcademyTeacher"}, Bosses = {} },
    ["Judgement"] = { Mobs = {"Swordsman"}, Bosses = {"YamatoBoss"} },
    ["Soul Society"] = { Mobs = {"Quincy"}, Bosses = {} },
    ["Boss Island"] = { Mobs = {}, Bosses = {"SaberBoss", "QinShiBoss", "IchigoBoss", "GilgameshBoss", "BlessedMaidenBoss", "SaberAlterBoss"} },
    ["Events (Timed Bosses)"] = { Mobs = {}, Bosses = {"MadokaBoss", "Rimuru"} }
}

getgenv().QuestDataMap = {
    ["Starter"] = {{Name = "Quest 1: Mobs (Thief)", NPC = "QuestNPC1", Target = "Thief", Type = "Mob"}, {Name = "Quest 2: Boss (Thief Boss)", NPC = "QuestNPC2", Target = "ThiefBoss", Type = "Boss"}},
    ["Jungle"] = {{Name = "Quest 3: Mobs (Monkey)", NPC = "QuestNPC3", Target = "Monkey", Type = "Mob"}, {Name = "Quest 4: Boss (Monkey Boss)", NPC = "QuestNPC4", Target = "MonkeyBoss", Type = "Boss"}},
    ["Desert"] = {{Name = "Quest 5: Mobs (Bandits)", NPC = "QuestNPC5", Target = "DesertBandit", Type = "Mob"}, {Name = "Quest 6: Boss (Desert Boss)", NPC = "QuestNPC6", Target = "DesertBoss", Type = "Boss"}},
    ["Snow"] = {{Name = "Quest 7: Mobs (Frost Rogue)", NPC = "QuestNPC7", Target = "FrostRogue", Type = "Mob"}, {Name = "Quest 8: Boss (Snow Boss)", NPC = "QuestNPC8", Target = "SnowBoss", Type = "Boss"}},
    ["Sailor"] = {{Name = "Sailor Anchor", NPC = "JinwooMovesetNPC", Target = "None", Type = "Mob"}},
    ["Shibuya"] = {{Name = "Quest 9: Mobs (Sorcerer)", NPC = "QuestNPC9", Target = "Sorcerer", Type = "Mob"}, {Name = "Quest 10: Mobs (Panda Sorcerer)", NPC = "QuestNPC10", Target = "PandaMiniBoss", Type = "Boss"}},
    ["Hueco Mundo"] = {{Name = "Quest 11: Mobs (Hollow)", NPC = "QuestNPC11", Target = "Hollow", Type = "Mob"}},
    ["Shinjuku"] = {{Name = "Quest 12: Mobs", NPC = "QuestNPC12", Target = "StrongSorcerer", Type = "Mob"}, {Name = "Quest 13: Mobs", NPC = "QuestNPC13", Target = "Curse", Type = "Mob"}},
    ["Slime"] = {{Name = "Quest 14: Mobs (Slime)", NPC = "QuestNPC14", Target = "Slime", Type = "Mob"}},
    ["Academy"] = {{Name = "Quest 15: Mobs (Teacher)", NPC = "QuestNPC15", Target = "AcademyTeacher", Type = "Mob"}},
    ["Judgement"] = {{Name = "Quest 16: Mobs", NPC = "QuestNPC16", Target = "Swordsman", Type = "Mob"}},
    ["Soul Society"] = {{Name = "Quest 17: Mobs", NPC = "QuestNPC17", Target = "Quincy", Type = "Mob"}},
    ["Boss Island"] = {{Name = "Island Anchor", NPC = "SummonBossNPC", Target = "None", Type = "Mob"}}
}

getgenv().QuestProgression = {
    { Island = "Starter", Quest = "Quest 1: Mobs (Thief)", MinLevel = 1 }, { Island = "Starter", Quest = "Quest 2: Boss (Thief Boss)", MinLevel = 100 },
    { Island = "Jungle", Quest = "Quest 3: Mobs (Monkey)", MinLevel = 250 }, { Island = "Jungle", Quest = "Quest 4: Boss (Monkey Boss)", MinLevel = 500 },
    { Island = "Desert", Quest = "Quest 5: Mobs (Bandits)", MinLevel = 750 }, { Island = "Desert", Quest = "Quest 6: Boss (Desert Boss)", MinLevel = 1000 },
    { Island = "Snow", Quest = "Quest 7: Mobs (Frost Rogue)", MinLevel = 1500 }, { Island = "Snow", Quest = "Quest 8: Boss (Snow Boss)", MinLevel = 2000 },
    { Island = "Shibuya", Quest = "Quest 9: Mobs (Sorcerer)", MinLevel = 3000 }, { Island = "Shibuya", Quest = "Quest 10: Mobs (Panda Sorcerer)", MinLevel = 4000 },
    { Island = "Hueco Mundo", Quest = "Quest 11: Mobs (Hollow)", MinLevel = 5000 }, { Island = "Shinjuku", Quest = "Quest 12: Mobs", MinLevel = 6250 },
    { Island = "Shinjuku", Quest = "Quest 13: Mobs", MinLevel = 7000 }, { Island = "Slime", Quest = "Quest 14: Mobs (Slime)", MinLevel = 8000 },
    { Island = "Academy", Quest = "Quest 15: Mobs (Teacher)", MinLevel = 10000 }, { Island = "Judgement", Quest = "Quest 16: Mobs", MinLevel = 10750 },
    { Island = "Soul Society", Quest = "Quest 17: Mobs", MinLevel = 11500 }
}

-- CONTROL VARIABLES (HubConfig)
getgenv().HubConfig = {
    FilterOptions = {"All", "Starter", "Jungle", "Desert", "Snow", "Shibuya", "Hueco Mundo", "Shinjuku", "Slime", "Academy", "Judgement", "Soul Society", "Boss Island", "Events (Timed Bosses)"},
    QuestFilterOptions = {"Starter", "Jungle", "Desert", "Snow", "Shibuya", "Hueco Mundo", "Shinjuku", "Slime", "Academy", "Judgement", "Soul Society"},
    SelectedFilter = "All",
    AutoFarm = false, SelectedMob = "None", AvailableMobs = {},
    AutoBoss = false, SelectedBoss = "None", SelectedBosses = {}, Bosses = {},
    AutoSummon = false, SelectedSummonBoss = "None",
    AutoDummy = false, 
    SelectedWeapon = "None", AvailableWeapons = {"None"},
    AutoQuest = false, SelectedQuestIsland = "Starter", SelectedQuest = nil, AutoFarmMaxLevel = false,
    Distance = 5, TweenSpeed = 150, AttackPosition = "Behind",
    AutoCollect = { Fruits = false, Hogyoku = false, Puzzles = false, Chests = false },
    AutoGroupReward = false, 
    AutoStats = false, SelectedStats = {}, StatsList = {"Melee", "Defense", "Sword", "Power"}, ManualStat = "Melee", ManualAmount = 1,
    SuperSpeed = false, SpeedMultiplier = 2, InfJump = false,
    AutoOpenChests = { Common = false, Rare = false, Epic = false, Legendary = false, Mythical = false },
    ChestOpenAmount = 1,
    AutoReroll = { Race = false, TargetRace = "Kitsune", Clan = false, TargetClan = "Gojo" },
    AutoTrait = false, AutoStatReroll = false, SelectedStatToReroll = "Damage", StatsToRerollList = {"Damage", "Luck", "Health", "Defense"},
    Islands = {"Starter", "Jungle", "Desert", "Snow", "Sailor", "Shibuya", "HuecoMundo", "Boss", "Dungeon", "Shinjuku", "Slime", "Academy", "Judgement", "SoulSociety"},
    NPCs = {"GroupRewardNPC", "BossRushShopNPC", "BossRushPortalNPC", "DungeonMerchantNPC", "EnchantNPC", "YujiBuyerNPC", "BlessingNPC", "SlimeCraftNPC", "RimuruMasteryNPC", "SkillTreeNPC", "Katana", "MadokaBuyer", "HakiQuestNPC", "SummonBossNPC"},
    NativeHacks = { HakiWeapon = false, HakiObservation = false, NoShake = false, NoCutscene = false, DisablePvP = false, ExtraJump = false },
    FruitSniper = false
}

-- INTERNAL REFERENCES
getgenv().MobDropdownRef = nil
getgenv().BossDropdownRef = nil
getgenv().NPCDropdownRef = nil
getgenv().QuestDropdownRef = nil
getgenv().WeaponDropdownRef = nil
getgenv().CurrentTarget = nil 
getgenv().FarmTarget = nil 
getgenv().FruitSniperEvent = nil

-- 💾 CONFIG SAVE/LOAD SYSTEM 💾
local ConfigFolderName = "ComunidadeHub"
local ConfigFileName = ConfigFolderName .. "/SailorPiece_Config.json"

getgenv().SaveSettings = function()
    pcall(function()
        if not isfolder(ConfigFolderName) then makefolder(ConfigFolderName) end
        local DataToSave = {
            SelectedWeapon = HubConfig.SelectedWeapon,
            Distance = HubConfig.Distance, 
            TweenSpeed = HubConfig.TweenSpeed, 
            AttackPosition = HubConfig.AttackPosition,
            SelectedMob = HubConfig.SelectedMob,
            SelectedBoss = HubConfig.SelectedBoss, 
            SelectedBosses = HubConfig.SelectedBosses,
            SelectedSummonBoss = HubConfig.SelectedSummonBoss,
            SelectedQuestIsland = HubConfig.SelectedQuestIsland,
            HacksNativos = HubConfig.NativeHacks
        }
        
        local JSONData = getgenv().HttpService:JSONEncode(DataToSave)
        writefile(ConfigFileName, JSONData)
    end)
end

getgenv().LoadSettings = function()
    pcall(function()
        if isfile(ConfigFileName) then
            local JSONData = readfile(ConfigFileName)
            local DecodedData = getgenv().HttpService:JSONDecode(JSONData)
            
            if type(DecodedData) == "table" then
                for key, value in pairs(DecodedData) do
                    if HubConfig[key] ~= nil then
                        if type(value) == "table" and type(HubConfig[key]) == "table" then
                            for subKey, subValue in pairs(value) do HubConfig[key][subKey] = subValue end
                        else
                            HubConfig[key] = value
                        end
                    end
                end
            end
        end
    end)
end

-- LOAD SETTINGS BEFORE STARTING THE REST OF THE SCRIPT
getgenv().LoadSettings()
