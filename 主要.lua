
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/binjiaob/XSK/refs/heads/main/XK%E7%94%A8%E6%88%B7%E7%95%8C%E9%9D%A2.txt", true))()
    local window = library:new("这真是个好意见")
    local creds = window:Tab("关于", "6031097229")
    local bin = creds:section("信息", true)
    bin:Label("XKUI但是作者是RNG！")
    bin:Label("")
    bin:Label("使用过的主播:roblox.小猫老弟\n快手号:4318449781\n罗布勒斯 (铁桶僵尸限定)\n快手号:3785648334\n严厉批评roblox.小猫老弟，直播间禁言我")
    bin:Label("严厉批评roblox.小猫老弟直播间禁言我")
        local creds = window:Tab("通用", "6031097229")
        local creditsB = creds:section("人物属性", true)
    
    creditsB:Slider('修改速度', 'WalkspeedSlider', 16, 16, 99999,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

    creditsB:Slider('修改跳跃', 'JumpPowerSlider', game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 99999,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

    creditsB:Slider('修改重力', 'GravitySlider', game.Workspace.Gravity, 198, 99999,false,function(Value)
    game.Workspace.Gravity = Value
end)

    creditsB:Slider('修改高度', 'Slider', game.Players.LocalPlayer.Character.Humanoid.HipHeight, game.Players.LocalPlayer.Character.Humanoid.HipHeight, 50,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
end)

    creditsB:Slider('相机缩放上限', 'ZOOOOOM OUT!',  128, 1, 200000,false, function(Value)
    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = Value
end)

    creditsB:Slider('相机焦距【正常为70】', 'Sliderflag', 70, 0.1, 120, false, function(v)
        game.Workspace.CurrentCamera.FieldOfView = v
end)

    creditsB:Slider('健康值', 'Sliderflag',  100, 0, 9999,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.Health = Value
end)
    creditsB:Toggle("无限跳","Toggle",false,function(Value)
    Jump = Value
    game.UserInputService.JumpRequest:Connect(function()
        if Jump then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end)
end)
local creditsC = creds:section("画面", true)
creditsC:Label("不做通用了")
local creds = window:Tab("下降", "6031097229")
        local about = creds:section("esp", true)

    about:Toggle("电梯透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "TheElevator" then
            createBillboard(instance, "这里是家", Color3.new(0, 0, 0)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "TheElevator" then
            createBillboard(instance, "这里是家", Color3.new(0, 0, 0)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
    about:Toggle("红怪透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "Barnabe" then
            createBillboard(instance, "红色的怪物", Color3.new(255, 0, 0)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "Barnabe" then
            createBillboard(instance, "红色的怪物", Color3.new(255, 0, 0)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
    about:Toggle("也许是蓝色的怪物","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "MainModel" then
            createBillboard(instance, "蓝色的怪物", Color3.new(255, 0, 0)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "MainModel" then
            createBillboard(instance, "蓝色的怪物", Color3.new(255, 0, 0)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
    about:Toggle("搬运/抓到检测机器人透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "BlueMonkey" then
            createBillboard(instance, "机器人", Color3.new(255, 0, 0)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "BlueMonkey" then
            createBillboard(instance, "机器人", Color3.new(255, 0, 0)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
    about:Toggle("搬运/抓到检测机器人红色透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "RedMonkey" then
            createBillboard(instance, "机器人", Color3.new(255, 0, 0)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "RedMonkey" then
            createBillboard(instance, "机器人", Color3.new(255, 0, 0)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
        local aboun = creds:section("esp物品", true)
            aboun:Toggle("电闸透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "rig" then
            createBillboard(instance, "电闸", Color3.new(0, 0, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "rig" then
            createBillboard(instance, "电闸", Color3.new(0, 0, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
            aboun:Toggle("武器箱透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "AmmoBox" then
            createBillboard(instance, "武器箱子", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "AmmoBox" then
            createBillboard(instance, "武器箱子", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("香蕉皮透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "BananaPeel" then
            createBillboard(instance, "香蕉皮", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "BananaPeel" then
            createBillboard(instance, "香蕉皮", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("蓝色板调箱透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "BlueCrate" then
            createBillboard(instance, "蓝色箱子", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "BlueCrate" then
            createBillboard(instance, "蓝色箱子", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("瓶子透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "Bottle" then
            createBillboard(instance, "瓶子", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "Bottle" then
            createBillboard(instance, "瓶子", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("没有用的任务板透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "Clipboard" then
            createBillboard(instance, "一坨的物品", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "Clipboard" then
            createBillboard(instance, "一坨的物品", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("踩上去会有屁声的物品透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "FartCushion" then
            createBillboard(instance, "放屁坐垫", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "FartCushion" then
            createBillboard(instance, "放屁坐垫", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("钢管透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "MetalPipe" then
            createBillboard(instance, "钢管", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "MetalPipe" then
            createBillboard(instance, "钢管", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("平底锅透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "Pan" then
            createBillboard(instance, "平底锅", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "Pan" then
            createBillboard(instance, "平底锅", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("警察?透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "PoliceSiren" then
            createBillboard(instance, "不知道", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "PoliceSiren" then
            createBillboard(instance, "不知道", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("红色罐子透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "RedCanister" then
            createBillboard(instance, "红色罐子", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "RedCanister" then
            createBillboard(instance, "红色罐子", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("遥远?透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "Remote" then
            createBillboard(instance, "遥远", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "Remote" then
            createBillboard(instance, "遥远", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("废品/铁板透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "Scrap" then
            createBillboard(instance, "废品", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "Scrap" then
            createBillboard(instance, "废品", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                aboun:Toggle("大电视透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "TV" then
            createBillboard(instance, "电视", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "TV" then
            createBillboard(instance, "电视", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                    aboun:Toggle("蓝桶","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "BlueJerrycan" then
            createBillboard(instance, "蓝桶", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "BlueJerrycan" then
            createBillboard(instance, "蓝桶", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                        aboun:Toggle("红桶","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "RedJerrycan" then
            createBillboard(instance, "红桶", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "RedJerrycan" then
            createBillboard(instance, "红桶", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                        aboun:Toggle("红色大箱子","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "RedCrate" then
            createBillboard(instance, "红色大箱子", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "RedCrate" then
            createBillboard(instance, "红色大箱子", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
                        aboun:Toggle("应该是蓝色大箱子","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "BlueCrate" then
            createBillboard(instance, "蓝色大箱子", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "BlueCrate" then
            createBillboard(instance, "蓝色大箱子", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
    aboun:Toggle("橙色大箱子","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "OrangeCrate" then
            createBillboard(instance, "橙色大箱子", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "OrangeCrate" then
            createBillboard(instance, "橙色大箱子", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
local credb = window:Tab("格蕾斯", "6031097229")
        local about = credb:section("esp", true)
    about:Toggle("门","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "Door" then
            createBillboard(instance, "门", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "Door" then
            createBillboard(instance, "门", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
        about:Toggle("拉闸","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "Breaker" then
            createBillboard(instance, "拉闸", Color3.new(255, 255, 255)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "Breaker" then
            createBillboard(instance, "拉闸", Color3.new(255, 255, 255)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("偷偷放弃个项目")
        about:Label("UI有些问题所以看起来按着跟没按一样")
        about:Label("我怒了呀你怎么一直往下翻")
       about:Button("删除粉色冲刺",function()
 game:GetService("ReplicatedStorage").SendRush:Destroy()
end)
about:Button("删除悲伤",function()
 game:GetService("ReplicatedStorage").SendSorrow:Destroy()
end)
about:Button("删除而他好像是臭长虫",function()
 game:GetService("ReplicatedStorage").SendWorm:Destroy()
end)
about:Button("删除???",function()
 game:GetService("ReplicatedStorage").SendGoatman:Destroy()
end)
about:Button("删除眼睛",function()
 workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "eye" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant:Destroy()
        end
    end
end)
end)
about:Button("删除红色眼睛",function()
 workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "smile" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant:Destroy()
        end
    end
end)
workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "eyePrime" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant:Destroy()
        end
    end
end)
end)
about:Button("删除埃尔克曼 (黑色立正怪)",function()
 workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "elkman" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant:Destroy()
        end
    end
end)
end)
about:Button("删除血雨 (测试)",function()
 game:GetService("ReplicatedStorage").byebyemyFRIENDbacktothelobby:Destroy()
end)
about:Button("时间暂停如果时间到了就会没音乐",function()
 game:GetService("Players").LocalPlayer.PlayerGui.PizzaTower.Base["it's pizza tower time"]:Destroy()
 game:GetService("Players").LocalPlayer.PlayerGui.SpeedrunTimer.Timer:Destroy()
end)
about:Button("高级版的自动开闸门 (测试)",function()
 workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "base" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant.Position = player.Character.HumanoidRootPart.Position
        end
    end
end)
end)
about:Button("提前开门坑队友的 (测试) (高风险) (开启卡bug提高) (可以让后面的地图无法刷新)",function()
 workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "promptBox" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant.Position = player.Character.HumanoidRootPart.Position
        end
    end
end)
end)
local aboub = credb:section("娱乐", true)
local credh = window:Tab("面包增量", "6031097229")
        local about = credh:section("esp", true)
        about:Button("自动收集面包",function()
workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "Bread" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant.Position = player.Character.HumanoidRootPart.Position
        end
    end
end)
end)
        about:Button("自动收集蓝莓面包",function()
workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "Blueberry" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant.Position = player.Character.HumanoidRootPart.Position
        end
    end
end)
end)
        about:Button("自动收集黄金面包",function()
workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "Golden" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant.Position = player.Character.HumanoidRootPart.Position
        end
    end
end)
end)
        about:Button("自动收集草莓面包",function()
workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "Strawberry" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant.Position = player.Character.HumanoidRootPart.Position
        end
    end
end)
end)
        about:Button("自动收集香蕉面包",function()
workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "Banana" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant.Position = player.Character.HumanoidRootPart.Position
        end
    end
end)
end)
        about:Button("自动收集巧克力面包",function()
workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "Chocolate" and descendant:IsA("BasePart") then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            descendant.Position = player.Character.HumanoidRootPart.Position
        end
    end
end)
end)
    about:Toggle("VIP体验自我娱乐","MainHouse",false,function(state)
        if state then
game:GetService("Players").LocalPlayer.VIP.Value = true
else
game:GetService("Players").LocalPlayer.VIP.Value = false
end
    end)
about:Button("升级面包出卖价格",function()
local args = {
    [1] = "BreadIncome",
    [2] = "Upgrades"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyUpgrade"):FireServer(unpack(args))

end)
about:Button("远程出卖",function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SellBread"):FireServer()

end)

local crede = window:Tab("严格的哥哥", "6031097229")
        local about = crede:section("esp", true)
        
    about:Toggle("哥哥透视","MainHouse",false,function(state)
        if state then
_G.MainHouseESPInstances = {}
local esptable = {doors = {}}
local function createBillboard(instance, name, color)
    local bill = Instance.new("BillboardGui", game.CoreGui)
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.Adornee = instance
    bill.MaxDistance = 2000

    local mid = Instance.new("Frame", bill)
    mid.AnchorPoint = Vector2.new(0.5, 0.5)
    mid.BackgroundColor3 = color
    mid.Size = UDim2.new(0, 8, 0, 8)
    mid.Position = UDim2.new(0.5, 0, 0.5, 0)
    Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", mid)

    local txt = Instance.new("TextLabel", bill)
    txt.AnchorPoint = Vector2.new(0.5, 0.5)
    txt.BackgroundTransparency = 1
    txt.TextColor3 = color
    txt.Size = UDim2.new(1, 0, 0, 20)
    txt.Position = UDim2.new(0.5, 0, 0.7, 0)
    txt.Text = name
    Instance.new("UIStroke", txt)

    local highlight = Instance.new("Highlight")
    highlight.Adornee = instance
    highlight.FillColor = Color3.new(1, 1, 1)--高亮颜色
    highlight.FillTransparency = 0.38--高亮亮度，建议主播改成0.14，这个0.9亮度是几乎看不见
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0.5
    highlight.Parent = game.CoreGui
    
    task.spawn(function()
        while bill do
            if not instance:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                highlight:Destroy()
                break
            end
            task.wait()
        end
    end)
end

local function monitorMainHouse()
    for _, instance in pairs(workspace:GetDescendants()) do
        if instance:IsA("Model") and instance.Name == "older brother AI" then
            createBillboard(instance, "哥哥", Color3.new(0, 0, 0)) --改颜色这没什么好说的
        end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if instance:IsA("Model") and instance.Name == "older brother AI" then
            createBillboard(instance, "哥哥", Color3.new(0, 0, 0)) --改颜色
        end
    end)
end

monitorMainHouse()
table.insert(_G.MainHouseESPInstances, esptable)

else
    if _G.MonsterModelESPInstances then
        for _, instance in pairs(_G.MainHouseESPInstances) do
            for _, v in pairs(instance.doors) do
                v.delete()
            end
        end
        _G.MainHouseESPInstances = nil
    end
end
    end)
    about:Button("将哥哥传送至虚空",function()

local notification = loadstring(game:HttpGet('https://raw.githubusercontent.com/Loco-CTO/UI-Library/main/VisionLibV2/source.lua'))()
notification:ForceNotify({
        Name = "提醒",
        Text = "请购买绊脚绳并把放置后将哥哥绊倒",
        Icon = "rbxassetid://11401835376",
        Duration = 5,
    })

end)
        local aboue = crede:section("传送", true)
            aboue:Button("传送:卧室",function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(13.1876192, 23.5999985, -31.1082268, 0.130208626, -1.09209658e-07, 0.991486609, 2.35645565e-08, 1, 1.07052728e-07, -0.991486609, 9.42475342e-09, 0.130208626)
end)
            aboue:Button("传送:地下室",function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(60.2119675, -14.3999977, -41.8645554, -0.0113167269, -1.10105447e-07, -0.999935985, 4.71563268e-08, 1, -1.10646191e-07, 0.999935985, -4.84054574e-08, -0.0113167269)
end)
            aboue:Button("传送:电脑",function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23.2569027, 5.60000038, -26.888422, -0.0229508225, -6.64772415e-08, -0.999736607, 1.19167902e-08, 1, -6.67683295e-08, 0.999736607, -1.34460389e-08, -0.0229508225)
end)
            aboue:Button("传送:厨房",function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(30.9939938, 5.60000038, -60.9080811, -0.314246535, 3.99565714e-08, -0.949341416, 1.14301626e-08, 1, 3.8305167e-08, 0.949341416, 1.18613952e-09, -0.314246535)
end)
            aboue:Button("传送:餐厅",function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.53217554, 8.59999847, -58.2451553, -0.939801276, 8.4406679e-08, 0.341721416, 6.03752426e-08, 1, -8.09605325e-08, -0.341721416, -5.54552955e-08, -0.939801276)
end)
            aboue:Button("传送:车库",function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3.4044497, 4.59999943, -28.6127758, -0.185406357, 5.55820234e-09, 0.982661963, 4.18689012e-08, 1, 2.2434552e-09, -0.982661963, 4.1558927e-08, -0.185406357)
end)
            aboue:Button("传送:厕所",function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.36604738, 23.5999947, -80.1601486, -0.994789243, 2.70780216e-08, -0.101952903, 2.90486906e-08, 1, -1.78445472e-08, 0.101952903, -2.0713161e-08, -0.994789243)
end)
            aboue:Button("传送:外面",function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2.95609236, 3.5999999, 8.1168499, 0.999889493, -2.12105356e-09, 0.014865486, 6.38077646e-10, 1, 9.97644065e-08, -0.014865486, -9.97438931e-08, 0.999889493)
end)
