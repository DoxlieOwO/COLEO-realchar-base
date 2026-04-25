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
local KeyDown = Instance.new("RemoteEvent", Character)
KeyDown.Name = "KeyDown"

local KeyUp = Instance.new("RemoteEvent", Character)
KeyUp.Name = "KeyDown"


--------------------- [[ FUNCTIONS ]] ---------------

local function OnKeyDown(Input, GPE)
    if GPE then return end

    print("On Key Down", Input.KeyCode)
end

local function OnKeyUp(Input, GPE)
    if GPE then return end

    print("On Key Up", Input.KeyCode)
end


--------------------- [[ INIT ]] ---------------

NLS([[
local KeyUp = script.Parent:WaitForChild("KeyUp")
local KeyDown = script.Parent:WaitForChild("KeyDown")

local UserInputService = game:GetService("UserInputService")
local Mouse = owner:GetMouse() :: Mouse




UserInputService.InputBegan:Connect(function(input, gpe)
	KeyUp:FireServer({UserInputState = input.UserInputState, KeyCode = input.KeyCode, UserInputType = input.UserInputType}, gpe)
end)

UserInputService.InputEnded:Connect(function(input, gpe)
	KeyDown:FireServer({UserInputState = input.UserInputState, KeyCode = input.KeyCode, UserInputType = input.UserInputType}, gpe)
end) 
]], Character)


--------------------- [[ MAIN ]] ---------------
KeyDown.OnServerEvent:Connect(funcion(iPlayer, Input, GPE)
    if iPlayer ~= Player then return end
    OnKeyDown(Input, GPE)
end)

KeyUp.OnServerEvent:Connect(funcion(iPlayer, Input, GPE)
    if iPlayer ~= Player then return end
    OnKeyUp(Input, GPE)
end)

print("COLEO realchar base loaded: ", Player)
