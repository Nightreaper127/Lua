--bypass anti cheat with stolden code from other people
getgenv().Erlc = true
getgenv().ExtraProtectionLayerERLC = false ---Might break some game features
--github is hard lord help me
loadstring(game:HttpGet("https://raw.githubusercontent.com/Awakenchan/Bypass/main/BypassAwaken"))()

--and this should get the atm hacked
consolename = function() end
local logging = {}
 logging.info = function( message ) rcolorprint("@@LIGHT_GRAY@@[@@BLUE@@INFO@@LIGHT_GRAY@@] @@WHITE@@"..message.."\n") end
 logging.warn = function( message ) rcolorprint("@@LIGHT_GRAY@@[@@YELLOW@@WARN@@LIGHT_GRAY@@] @@WHITE@@"..message.."\n") end
 logging.error = function( message ) rcolorprint("@@LIGHT_GRAY@@[@@RED@@FAIL@@LIGHT_GRAY@@] @@WHITE@@"..message.."\n") end

local Players = game:GetService("Players"); local LocalPlayer = Players.LocalPlayer; local ReplicatedStorage = game:GetService("ReplicatedStorage"); local RunService = game:GetService("RunService");
local ColorIndex = {BLACK = 30,RED = 31,GREEN = 32,YELLOW = 33,BLUE = 34,MAGENTA = 35,CYAN = 36,LIGHT_GRAY = 37,DARK_GRAY = 90,LIGHT_RED = 91,LIGHT_GREEN = 92,LIGHT_YELLOW = 93,LIGHT_BLUE = 94,LIGHT_MAGENTA = 95, LIGHT_CYAN = 96, WHITE = 97, B = 1, UNDERLINE = 4, N_UNDERLINE = 24, NEGATIVE = 7, POSITIVE = 27, DEFAULT = 0}
local function rcolorprint( message ) local SeperatedContents = string.split(message, "@@") for i, v in pairs(SeperatedContents) do if i % 2 == 0 then print("\27["..ColorIndex[string.upper(v)].."m") else print(v) end end end
local function hookgamemenu(child)
   local success, message = pcall(function()
       if child.Name == "GameMenus" and child:IsA("ScreenGui") then
       end
   end)
   if not success then
       logging.error("Error occured while hooking onto gamemenu: @@RED@@"..message)
   end
end
hookgamemenu(LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("GameMenus"))
LocalPlayer:WaitForChild("PlayerGui").ChildAdded:Connect(hookgamemenu)
logging.info("Waiting for robbery")