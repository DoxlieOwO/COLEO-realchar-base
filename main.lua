-------------------------------------------------------------------------------
-- COLEO realchar base --
local Player = Owner
local Character = Player.Character

local RemoteFolder = Instance.new("Folder", Character)
RemoteFolder.Name = "Remotes"


--------------------- [[ HEADER ]] ---------------
local KeyDown = Instance.new("RemoteEvent", RemoteFolder)
KeyDown.Name = "KeyDown"


--------------------- [[ FUNCTIONS ]] ---------------




--------------------- [[ INIT ]] ---------------




--------------------- [[ MAIN ]] ---------------
print("COLEO realchar base loaded: ", Player)