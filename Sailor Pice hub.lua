-- 1. Cleanup of previous executions to avoid duplicate loops (Ghosts)
if _G.ComunidadeHub_Cleanup then _G.ComunidadeHub_Cleanup() end

-- 2. Initialization of Global Control Variables (Necessary for communication between parts)
getgenv().isRunning = true
getgenv().scriptConnections = {}

-- 3. Sequential Loader (You MUST keep this exact order!)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Noob1Code/Sailor-Piece-Hub/refs/heads/main/1_Dados.lua"))()
task.wait(0.1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Noob1Code/Sailor-Piece-Hub/refs/heads/main/2_Funcoes.lua"))()
task.wait(0.1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Noob1Code/Sailor-Piece-Hub/refs/heads/main/3_Loops.lua"))()
task.wait(0.1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Noob1Code/Sailor-Piece-Hub/refs/heads/main/4_Interface.lua"))()