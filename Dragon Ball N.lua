local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local label = Instance.new("TextLabel")
local FreezeScript = Instance.new("TextButton")
local NoCooldownPressIt = Instance.new("TextButton")
local SMALLEXPLORER01PressIt = Instance.new("TextButton")
local label_2 = Instance.new("TextLabel")
local label_3 = Instance.new("TextLabel")
local NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE = Instance.new("TextButton")
local RemoveStunPressItIFSomeoneGlitchedyou = Instance.new("TextButton")
local RefreshButton = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.CoreGui
 
main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(0.488363057, 0, 0, 0)
main.Size = UDim2.new(0, 326, 0, 454)
main.Active = true
main.Draggable = true
 
label.Name = "label"
label.Parent = main
label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
label.BorderColor3 = Color3.fromRGB(255, 255, 255)
label.Position = UDim2.new(0, 0, 0, 0)
label.Size = UDim2.new(1, 0, 0, 53)
label.Font = Enum.Font.GothamBold
label.Text = "Dragon Ball N 2023 [V5.0]"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 25.000
 
FreezeScript.Name = "Freeze Script"
FreezeScript.Parent = main
FreezeScript.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FreezeScript.Position = UDim2.new(0, 0, 0.115483403, 0)
FreezeScript.Size = UDim2.new(1, 0, 0, 50)
FreezeScript.Font = Enum.Font.GothamBold
FreezeScript.Text = "Freeze Script"
FreezeScript.TextColor3 = Color3.fromRGB(85, 255, 244)
FreezeScript.TextSize = 20.000
FreezeScript.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character["Melee"]:Remove()
end)
 
NoCooldownPressIt.Name = "No Cooldown [Press It]"
NoCooldownPressIt.Parent = main
NoCooldownPressIt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NoCooldownPressIt.Position = UDim2.new(0, 0, 0.22376509, 0)
NoCooldownPressIt.Size = UDim2.new(1, 0, 0, 50)
NoCooldownPressIt.Font = Enum.Font.GothamBold
NoCooldownPressIt.Text = "No Cooldown [Press It]"
NoCooldownPressIt.TextColor3 = Color3.fromRGB(255, 255, 255)
NoCooldownPressIt.TextSize = 20.000
NoCooldownPressIt.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.CurrentForm.Value = 0
end)
 
SMALLEXPLORER01PressIt.Name = "SMALL EXPLORER 0.1 [Press It]"
SMALLEXPLORER01PressIt.Parent = main
SMALLEXPLORER01PressIt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SMALLEXPLORER01PressIt.Position = UDim2.new(0, 0, 0.332046747, 0)
SMALLEXPLORER01PressIt.Size = UDim2.new(0, 326, 0, 51)
SMALLEXPLORER01PressIt.Font = Enum.Font.GothamBold
SMALLEXPLORER01PressIt.Text = "SMALL EXPLORER 1.3 [Press It]"
SMALLEXPLORER01PressIt.TextColor3 = Color3.fromRGB(0, 255, 0)
SMALLEXPLORER01PressIt.TextSize = 20.000
SMALLEXPLORER01PressIt.MouseButton1Down:connect(function()
	TextProperties = {"ClassName", "Name", "Value", "Text", "Reflectance", "Transparency", "Heat", "TeamName", "WalkSpeed", "Health", "MaxHealth", "Size", "Position", "AccountAge", "RobloxLocked", "TeamColor", "userId", "Brightness", "Ambient", "TimeOfDay", "FieldOfView", "CameraType", "LinkedSource"}
BoolProperties = {"Anchored", "CanCollide", "Disabled", "Jump", "Sit", "Visible", "Enabled", "Locked", "FilteringEnabled", "StreamingEnabled", "GlobalShadows"}
BrickColorProperties = {"BrickColor", "Color", "TeamColor", "Texture", "Value"}
s = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
pgr = Instance.new("TextButton")
pgr.Parent = s
pgr.Size = UDim2.new(0,100,0,40)
pgr.Position = UDim2.new(0,30,0,440)
pgr.Text="Extra Explorer"
pgr.BackgroundTransparency = 0.3
pgr.TextColor = BrickColor.new("White")
pgr.BackgroundColor = BrickColor.new("Really Black")
pgr.BorderColor = BrickColor.new("Black")
pgr.Font = "ArialBold"
pgr.FontSize = "Size14"
pgr.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr.TextStrokeTransparency = 0.3
pgr.BorderSizePixel = 1
pgr.BorderColor = BrickColor.new("White")
 
if game.Players.LocalPlayer.PlayerGui:findFirstChild("Explorer") then 
	game.Players.LocalPlayer.PlayerGui:findFirstChild("Explorer"):Remove() 
end
 
local Cloned
local Deleted
local DeleteParent
local Player
local Search
local ScriptSearch
local Gui
local Cloned = nil
local Deleted = nil
local DeleteParent = nil
local Current = 0
local CurrentOption = 0
 
function Clear()
	if Gui then 
		Gui:Remove() 
	end
	Current = 0
	CurrentOption = 0
end
 
function AddButton(N, Function, Color, Copy)
	if not N then 
		error("RenderButton - No Name Specified")
	end
	if not Function then 
		error("RenderButton - No Function Specified") 
	end
	if not Color then 
		Color = Color3.new(1, 1, 1) 
	end
	if Copy == nil then 
		Copy = true 
	end
	P = Instance.new("TextButton")
	if Copy then
		P.Size = UDim2.new(0, 110, 0, 20)
	else
		P.Size = UDim2.new(0, 130, 0, 20)
	end
	P.Text = N.Name
	P.Name = N.Name
	P.Parent = Gui
	P.BackgroundColor3 = Color
	P.TextColor3 = Color3.new(0, 0, 0)
	P.BackgroundTransparency = 0.5
	P.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300, 0, 50+(20*((Current%30)-1)))
	P.MouseButton1Click:connect(function() 
		Function(P) 
	end)
	D = Instance.new("TextButton")
	D.Size = UDim2.new(0, 20, 0, 20)
	D.Text = "X"
	D.Name = N.Name
	D.Parent = Gui
	D.BackgroundColor3 = Color3.new(1, 0, 0)
	D.TextColor3 = Color3.new(0, 0, 0)
	D.BackgroundTransparency = 0.5
	D.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+130, 0, 50+(20*((Current%30)-1)))
	D.MouseButton1Click:connect(function()
		Deleted = N
		DeleteParent = N.Parent
		N.Parent = nil
		Clear()
		Search(DeleteParent)
	end)
	if Copy then
		C = Instance.new("TextButton")
		C.Size = UDim2.new(0, 20, 0, 20)
		C.Text = "C"
		C.Name = N.Name
		C.Parent = Gui
		C.BackgroundColor3 = Color3.new(0, 1, 0.5)
		C.TextColor3 = Color3.new(0, 0, 0)
		C.BackgroundTransparency = 0.5
		C.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+110, 0, 50+(20*((Current%30)-1)))
		C.MouseButton1Click:connect(function()
			Cloned = N
			Clear()
			Search(N.Parent)
		end)
	end
	Current = Current + 1
	return P
end
 
function AddOption(N, Function, Color, Text)
	if not N then 
		error("RenderButton - No Name Specified") 
	end
	if not Color then 
		Color = Color3.new(1, 1, 1) 
	end
	if Text == nil then 
		Text = false 
	end
	if Text then
		P = Instance.new("TextBox")
	else
		P = Instance.new("TextButton")
	end
	P.Text = N
	P.Name = N
	P.Parent = Gui
	P.BackgroundColor3 = Color
	P.TextColor3 = Color3.new(0, 0, 0)
	P.BackgroundTransparency = 0.5
	P.Size = UDim2.new(0, 150, 0, 20)
	P.Position = UDim2.new(0, ((math.modf(CurrentOption/30))*150)+150, 0, 50+(20*((CurrentOption%30)-1)))
	if not Text and Function then
		P.MouseButton1Click:connect(function() Function(P) end)
	end
	CurrentOption = CurrentOption + 1
	return P
end
 
function AddTextOption(Obj, Prop)
	local Ob = Obj
	local Pro = Prop
	if type(Ob[Pro]) == "number" or type(Ob[Pro]) == "string" then
		CurrentOption = CurrentOption + 1
		local T = AddOption(Ob[Pro], nil, Color3.new(0.1, 0.4, 0.1), true)
		CurrentOption = CurrentOption - 2
		local O = AddOption("Change "..Pro..":", function() Ob[Pro] = T.Text end, Color3.new(0.1, 0.8, 0.1), false)
		CurrentOption = CurrentOption + 1
	end
end
 
function AddBrickColorOption(Obj, Prop)
	local Ob = Obj
	local Pro = Prop
	if BrickColor.new(tostring(Ob[Pro])) == Ob[Pro] then
		CurrentOption = CurrentOption + 1
		local T = AddOption(tostring(Ob[Pro]), nil, Color3.new(0.1, 0.4, 0.1), true)
		CurrentOption = CurrentOption - 2
		local O = AddOption("Change "..Pro..":", function() Ob[Pro] = BrickColor.new(T.Text) end, Color3.new(0.1, 0.8, 0.1), false)
		CurrentOption = CurrentOption + 1
	end
end
 
function AddBoolOption(Obj, Prop)
	local Ob = Obj
	local Pro = Prop
	if type(Ob[Pro]) == "boolean" then
		local O = AddOption(Pro..": "..tostring(Ob[Pro]), nil, Color3.new(0.1, 0.8, 0.1), false)
		O.MouseButton1Click:connect(function()
			if Ob[Pro] then
				Ob[Pro] = false
				O.Text = Pro..": false"
			else
				Ob[Pro] = true
				O.Text = Pro..": true"
			end
		end)
	end
end
 
function TestProperty(Obj, Property)
	Success = pcall(function() 
		if Obj[Property] then 
			return 
		end 
	end)
	return Success
end
 
function LoadOptions(Object)
	for Num, Prop in pairs(TextProperties) do
		if TestProperty(Object, Prop) then
			AddTextOption(Object, Prop)
		end
	end
	for Num, Prop in pairs(BoolProperties) do
		if TestProperty(Object, Prop) then
			AddBoolOption(Object, Prop)
		end
	end
	for Num, Prop in pairs(BrickColorProperties) do
		if TestProperty(Object, Prop) then
			AddBrickColorOption(Object, Prop)
		end
	end
end
 
function Search(Object)
	Gui = Instance.new("ScreenGui")
	Gui.Parent = game.Players.LocalPlayer.PlayerGui
	Gui.Name = "Explorer"
	if Object ~= game then
		AddOption("Back", function() 
			Clear(); 
			Search(Object.Parent) 
		end, Color3.new(0.5, 1, 1), false)
	end
	AddOption("Reload", function() Clear(); Search(Object); end, Color3.new(0.2, 1, 0.2), false)
	if Cloned then
		AddOption("Paste", function() Cloned:Clone().Parent = Object; Clear(); Search(Object); end, Color3.new(0.5, 1, 1), false)
	end
	if Deleted then
		AddOption("Undo", function() Deleted.Parent = DeleteParent; Deleted = nil; DeletedParent = nil; Clear(); Search(Object); end, Color3.new(1, 0.6, 0.1), false)
	end
	if Object:IsA("Player") then
		AddOption("Goto Character", function() Clear(); if Object.Character then Search(Object.Character); end end, Color3.new(1, 1, 1), false)
	end
	if Object:IsA("LocalScript") then
		AddOption("EditScript", function() Clear(); ScriptSearch(Object); end, Color3.new(1, 1, 1), false)
	end
	if Object:IsA("Terrain") then
		AddOption("Clear", function() Object:Clear(); end, Color3.new(1, 1, 1), false)
	end
	LoadOptions(Object)
	AddOption("Close", Clear, Color3.new(1, 0.2, 0), false)
	if not Object:IsA("Workspace") or not Object:IsA("Player") then
		for Num, Obj in pairs(Object:GetChildren()) do
			--if not Obj:IsA("BasePart") or not Object.Parent == game.Workspace then
			if true then
				if Obj:IsA("LocalScript") then
					AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 0, 0), true)
				elseif Obj:IsA("Script") or Obj:IsA("StarterScript") or Obj:IsA("CoreScript") then
					AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(0.5, 0.5, 0.8), true)
				elseif Obj.Parent == game then
					AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), false)
				else
					AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), true)
				end
			end
		end
	end
	function MoveUp(Place, Amount)
		for i,v in pairs(Place:GetChildren()) do
			if v:IsA("TextLabel") or v:IsA("TextBox") then
				v.Position = v.Position + UDim2.new(0,0,0,-Amount)
			end
		end
	end
	function MoveDown(Place, Amount)
		for i,v in pairs(Place:GetChildren()) do
			if v:IsA("TextLabel") or v:IsA("TextBox") then
				v.Position = v.Position + UDim2.new(0,0,0,Amount)
			end
		end
	end
	i=0
	function ScriptSearch(S)
		Script2 = S
		Script = Script2.Source
		Table = {}
		Enabled = true
		Gui = Instance.new("ScreenGui")
		Gui.Parent = game.Players.LocalPlayer.PlayerGui
		Gui.Name = "Explorer"
		while Enabled do
			Start, End = string.find(Script, '\n')
			print(Start, End)
			if Start and End then
				table.insert(Table, string.sub(Script, 1, End))
				New = string.sub(Script, End+1, string.len(Script))
				Script = New
			else
				Enabled = false
				table.insert(Table, string.sub(Script, 1, End))
				print("Finished")
			end
		end
		P = Instance.new("TextLabel")
		P.Size = UDim2.new(0, 500, 0, 20)
		P.Text = Script2.Name
		P.Name = "Script Line"
		P.Parent = Gui
		P.BackgroundColor3 = Color3.new(1, 1, 1)
		P.TextColor3 = Color3.new(0, 0, 0)
		P.BackgroundTransparency = 0.5
		P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))
		P.TextXAlignment = "Left"
		i=i+1
		New = {}
		for I,Val in pairs(Table) do
			print(Val)
			P = Instance.new("TextBox")
			P.ClearTextOnFocus = false
			P.Size = UDim2.new(0, 500, 0, 20)
			P.Text = Val
			P.Name = "Script Line"
			P.Parent = Gui
			P.BackgroundColor3 = Color3.new(1, 1, 1)
			P.TextColor3 = Color3.new(0, 0, 0)
			P.BackgroundTransparency = 0.5
			P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))
			P.TextXAlignment = "Left"
			table.insert(New, P)
			i=i+1
		end
		i=1
		P = Instance.new("TextButton")
		P.Size = UDim2.new(0, 20, 0, 20)
		P.Text = "^"
		P.Name = "Scroll"
		P.Parent = Gui
		P.BackgroundColor3 = Color3.new(1, 1, 1)
		P.TextColor3 = Color3.new(0, 0, 0)
		P.BackgroundTransparency = 0.5
		P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
		P.MouseButton1Click:connect(function() 
			MoveUp(Gui, -20) 
		end)
		i=i+1
		P = Instance.new("TextButton")
		P.Size = UDim2.new(0, 20, 0, 20)
		P.Text = "v"
		P.Name = "Scroll"
		P.Parent = Gui
		P.BackgroundColor3 = Color3.new(1, 1, 1)
		P.TextColor3 = Color3.new(0, 0, 0)
		P.BackgroundTransparency = 0.5
		P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
		P.MouseButton1Click:connect(function() 
			MoveDown(Gui, -20) 
		end)
		i=i+1
		P = Instance.new("TextButton")
		P.Size = UDim2.new(0, 20, 0, 20)
		P.Text = "^^"
		P.Name = "Scroll"
		P.Parent = Gui
		P.BackgroundColor3 = Color3.new(1, 1, 1)
		P.TextColor3 = Color3.new(0, 0, 0)
		P.BackgroundTransparency = 0.5
		P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
		P.MouseButton1Click:connect(function() 
			MoveUp(Gui, -200) 
		end)
		i=i+1
		P = Instance.new("TextButton")
		P.Size = UDim2.new(0, 20, 0, 20)
		P.Text = "vv"
		P.Name = "Scroll"
		P.Parent = Gui
		P.BackgroundColor3 = Color3.new(1, 1, 1)
		P.TextColor3 = Color3.new(0, 0, 0)
		P.BackgroundTransparency = 0.5
		P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
		P.MouseButton1Click:connect(function() 
			MoveDown(Gui, -200) 
		end)
		i=i+1
		P = Instance.new("TextButton")
		P.Size = UDim2.new(0, 20, 0, 20)
		P.Text = "S"
		P.Name = "Save"
		P.Parent = Gui
		P.BackgroundColor3 = Color3.new(0, 1, 0)
		P.TextColor3 = Color3.new(0, 0, 0)
		P.BackgroundTransparency = 0.5
		P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
		P.MouseButton1Click:connect(function()
			StringS = ""
			for Num, Obj in pairs(New) do
				StringS = StringS..Obj.Text..'\n'
			end
			S.Source = StringS
			S.Disabled = true
			S.Disabled = false
		end)
		i=i+1
		P = Instance.new("TextButton")
		P.Size = UDim2.new(0, 20, 0, 20)
		P.Text = "x"
		P.Name = "Back"
		P.Parent = Gui
		P.BackgroundColor3 = Color3.new(1, 0.2, 0)
		P.TextColor3 = Color3.new(0, 0, 0)
		P.BackgroundTransparency = 0.5
		P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
		P.MouseButton1Click:connect(function()
			Clear()
			i=0
			Search(S)
		end)
		i=i+1
	end
end
 
pgr.MouseButton1Click:connect(function()
	Clear()
	Search(game)
end)
end)
 
 
label_2.Name = "label"
label_2.Parent = main
label_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
label_2.Position = UDim2.new(0, 0, 0.891207397, 0)
label_2.Size = UDim2.new(1, 0, 0, 49)
label_2.Font = Enum.Font.ArialBold
label_2.Text = "Gui By [christophet5700] [DBN BETA ONLY]"
label_2.TextColor3 = Color3.fromRGB(255, 255, 255)
label_2.TextSize = 16.000
 
label_3.Name = "label"
label_3.Parent = main
label_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
label_3.Position = UDim2.new(0, 0, 0.791142464, 0)
label_3.Size = UDim2.new(1, 0, 0, 45)
label_3.Font = Enum.Font.ArialBold
label_3.Text = "???"
label_3.TextColor3 = Color3.fromRGB(255, 255, 255)
label_3.TextSize = 25.000
 
NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE.Name = "NO FACE  [REMOVE IT ON ANY FORM FIRST AND THEN  GO BASE!!!]"
NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE.Parent = main
NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE.Position = UDim2.new(0, 0, 0.443677247, 0)
NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE.Size = UDim2.new(0, 326, 0, 50)
NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE.Font = Enum.Font.GothamBold
NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE.Text = "NO FACE [Go any form then go base after.]"
NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE.TextColor3 = Color3.fromRGB(255, 255, 255)
NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE.TextSize = 14.000
NOFACEREMOVEITONANYFORMFIRSTANDTHENGOBASE.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Head.face:Remove()
end)
 
RemoveStunPressItIFSomeoneGlitchedyou.Name = "Remove Stun [Press It IF Someone Glitched you]"
RemoveStunPressItIFSomeoneGlitchedyou.Parent = main
RemoveStunPressItIFSomeoneGlitchedyou.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RemoveStunPressItIFSomeoneGlitchedyou.Position = UDim2.new(0, 0, 0.551958919, 0)
RemoveStunPressItIFSomeoneGlitchedyou.Size = UDim2.new(0, 327, 0, 56)
RemoveStunPressItIFSomeoneGlitchedyou.Font = Enum.Font.GothamBold
RemoveStunPressItIFSomeoneGlitchedyou.Text = "Remove Stun"
RemoveStunPressItIFSomeoneGlitchedyou.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveStunPressItIFSomeoneGlitchedyou.TextSize = 19.000
RemoveStunPressItIFSomeoneGlitchedyou.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character["Stun"]:Remove()
end)
 
RefreshButton.Name = "Refresh Button"
RefreshButton.Parent = main
RefreshButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RefreshButton.Position = UDim2.new(0, 0, 0.666496396, 0)
RefreshButton.Size = UDim2.new(1, 0, 0, 56)
RefreshButton.Font = Enum.Font.GothamBold
RefreshButton.Text = "Refresh Button"
RefreshButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RefreshButton.TextSize = 19.000
RefreshButton.MouseButton1Down:Connect(function()
	-- Not owned by me, Credits to the original owner
-- Press q to reset yourself
-- Good for games that dont allows you to reset
-- Xfer was here (T.V.K)
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
 
Mouse.KeyDown:Connect(function(key)
    if key == "-" then
 
local plr = game.Players.LocalPlayer --tells the script what plr is
local humanoid = plr.Character.Humanoid
local position = plr.Character.HumanoidRootPart.CFrame
wait(0.1)
humanoid:Destroy()
plr:ClearAllChildren() --clears all of the plr instance aka the local player
wait(5.25)
plr.Character.HumanoidRootPart.CFrame = position
    end
  end)
end)
