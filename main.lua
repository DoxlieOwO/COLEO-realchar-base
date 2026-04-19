-------------------------------------------------------------------------------
-- COLEO realchar base --
local Player = Owner
local Character = Player.Character
pcall(function()
    if script.Parent ~= Character then
        script.Parent = Character
    end
end)

local RemoteFolder = Instance.new("Folder", Character)
RemoteFolder.Name = "Remotes"


--------------------- [[ HEADER ]] ---------------
local KeyDown = Instance.new("RemoteEvent", RemoteFolder)
KeyDown.Name = "KeyDown"

local KeyUp = Instance.new("RemoteEvent", RemoteFolder)
KeyUp.Name = "KeyDown"


--------------------- [[ FUNCTIONS ]] ---------------




--------------------- [[ INIT ]] ---------------

NLS([[
local Services = {}    
]], Character)


--------------------- [[ MAIN ]] ---------------
print("COLEO realchar base loaded: ", Player)