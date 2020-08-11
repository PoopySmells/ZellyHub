writefile("ChatLoggerV1.lua"," ")

local ZellyChatLogger = Instance.new("ScreenGui")
local ZellChatLogger = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ZellyTitle = Instance.new("TextLabel")
local MainFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local UISizeConstraint = Instance.new("UISizeConstraint")
local ButtonContainer = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local CopyAll = Instance.new("TextButton")
local ClearAll = Instance.new("TextButton")
local UIListLayout_2 = Instance.new("UIListLayout")

ZellyChatLogger.Name = "ZellyChatLogger"
ZellyChatLogger.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ZellyChatLogger.ResetOnSpawn = false

ZellChatLogger.Name = "ZellChatLogger"
ZellChatLogger.Parent = ZellyChatLogger
ZellChatLogger.AnchorPoint = Vector2.new(0.5, 0.5)
ZellChatLogger.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
ZellChatLogger.BorderColor3 = Color3.fromRGB(93, 26, 185)
ZellChatLogger.BorderSizePixel = 0
ZellChatLogger.ClipsDescendants = true
ZellChatLogger.Position = UDim2.new(0.5, 0, 0.5, 0)
ZellChatLogger.Size = UDim2.new(0, 222, 0, 237)

--//ALL CREDITS GO TO Google Chrome\\--
 
local players = game:service('Players');
    local player = players.LocalPlayer;
    local mouse = player:GetMouse();
    local run = game:service('RunService');
    local stepped = run.Stepped;
    draggable = function(obj)
        spawn(function()
            obj.Active = true;
            local minitial;
            local initial;
            local isdragging;
            obj.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    isdragging = true;
                    minitial = input.Position;
                    initial = obj.Position;
                    local con;
                    con = stepped:Connect(function()
                        if isdragging then
                            local delta = Vector3.new(mouse.X, mouse.Y, 0) - minitial;
                            obj.Position = UDim2.new(initial.X.Scale, initial.X.Offset + delta.X, initial.Y.Scale, initial.Y.Offset + delta.Y);
                        else
                            con:Disconnect();
                        end;
                    end);
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            isdragging = false;
                        end;
                    end);
                end;
            end);
        end)
end;
 
draggable(ZellChatLogger)

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = ZellChatLogger

ZellyTitle.Name = "ZellyTitle"
ZellyTitle.Parent = ZellChatLogger
ZellyTitle.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
ZellyTitle.BackgroundTransparency = 1.000
ZellyTitle.BorderSizePixel = 0
ZellyTitle.Position = UDim2.new(0.022502251, 0, 0.0247361474, 0)
ZellyTitle.Size = UDim2.new(0, 212, 0, 26)
ZellyTitle.ZIndex = 3
ZellyTitle.Font = Enum.Font.GothamSemibold
ZellyTitle.Text = "Chat Logger"
ZellyTitle.TextColor3 = Color3.fromRGB(93, 26, 185)
ZellyTitle.TextSize = 24.000
ZellyTitle.TextWrapped = true

MainFrame.Name = "MainFrame"
MainFrame.Parent = ZellChatLogger
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
MainFrame.BorderColor3 = Color3.fromRGB(93, 26, 185)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.499549925, 0, 0.508424163, 0)
MainFrame.Size = UDim2.new(0.954095423, 0, 0.701480031, 0)
MainFrame.ZIndex = 2

UICorner_2.CornerRadius = UDim.new(0, 2)
UICorner_2.Parent = MainFrame

ScrollingFrame.Parent = MainFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 212, 0, 166)
ScrollingFrame.ZIndex = 2
ScrollingFrame.ScrollBarThickness = 6

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

UIPadding.Parent = ScrollingFrame
UIPadding.PaddingTop = UDim.new(0, 2)

UISizeConstraint.Parent = ZellChatLogger
UISizeConstraint.MaxSize = Vector2.new(222, 237)
UISizeConstraint.MinSize = Vector2.new(222, 237)

ButtonContainer.Name = "ButtonContainer"
ButtonContainer.Parent = ZellChatLogger
ButtonContainer.AnchorPoint = Vector2.new(0.5, 0.5)
ButtonContainer.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ButtonContainer.BorderColor3 = Color3.fromRGB(93, 26, 185)
ButtonContainer.BorderSizePixel = 0
ButtonContainer.ClipsDescendants = true
ButtonContainer.Position = UDim2.new(0.499549925, 0, 0.918235838, 0)
ButtonContainer.Size = UDim2.new(0.954095423, 0, 0.118143328, 0)
ButtonContainer.ZIndex = 2

UICorner_3.CornerRadius = UDim.new(0, 2)
UICorner_3.Parent = ButtonContainer

CopyAll.Name = "CopyAll"
CopyAll.Parent = ButtonContainer
CopyAll.BackgroundColor3 = Color3.fromRGB(63, 29, 109)
CopyAll.Size = UDim2.new(0, 101, 0, 20)
CopyAll.ZIndex = 2
CopyAll.AutoButtonColor = false
CopyAll.Font = Enum.Font.SourceSans
CopyAll.Text = "Copy Logged"
CopyAll.TextColor3 = Color3.fromRGB(216, 216, 216)
CopyAll.TextSize = 16.000

ClearAll.Name = "ClearAll"
ClearAll.Parent = ButtonContainer
ClearAll.BackgroundColor3 = Color3.fromRGB(63, 29, 109)
ClearAll.Size = UDim2.new(0, 101, 0, 20)
ClearAll.ZIndex = 2
ClearAll.AutoButtonColor = false
ClearAll.Font = Enum.Font.SourceSans
ClearAll.Text = "Clear Logged"
ClearAll.TextColor3 = Color3.fromRGB(216, 216, 216)
ClearAll.TextSize = 16.000

UIListLayout_2.Parent = ButtonContainer
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_2.Padding = UDim.new(0, 2)

function createTween(Object,properties,delayTime)
	local tweenService = game:GetService("TweenService");
	local infoTween = TweenInfo.new(tonumber(delayTime),Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0);
			
	local Anim = tweenService:Create(Object,infoTween,properties);
	Anim:Play();
	return Anim;
end
	
local Paths = {
	["ScrollingUI"] = ZellChatLogger.MainFrame.ScrollingFrame;
}
    
local MessageLog = "";
function Message(speaker,Msg)
	local ChangeLogMessage = Instance.new("TextLabel")
	local UIPadding = Instance.new("UIPadding")
	
	ChangeLogMessage.Name = "ChangeLogMessage"
	ChangeLogMessage.Parent = Paths.ScrollingUI
	ChangeLogMessage.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	ChangeLogMessage.BackgroundTransparency = 1.000
	ChangeLogMessage.BorderSizePixel = 0
	ChangeLogMessage.Position = UDim2.new(0, 0, 0.0131578948, 0)
	ChangeLogMessage.Size = UDim2.new(0, 205, 0, 18)
	ChangeLogMessage.ZIndex = 3
	ChangeLogMessage.Font = Enum.Font.SourceSansLight
	ChangeLogMessage.Text = "[".. tostring(speaker) .."] - " .. tostring(Msg)
	ChangeLogMessage.TextColor3 = Color3.fromRGB(154, 154, 154)
	ChangeLogMessage.TextSize = 14.000
	ChangeLogMessage.TextWrapped = true
	ChangeLogMessage.TextXAlignment = Enum.TextXAlignment.Left
	ChangeLogMessage.LayoutOrder = #Paths.ScrollingUI:GetChildren() + 1
		
	UIPadding.Parent = ChangeLogMessage
	UIPadding.PaddingBottom = UDim.new(0, 4)
	UIPadding.PaddingLeft = UDim.new(0, 6)
	UIPadding.PaddingRight = UDim.new(0, 6)
	UIPadding.PaddingTop = UDim.new(0, 4)
		
    Paths.ScrollingUI.CanvasSize = UDim2.new(0, 0, 0, Paths.ScrollingUI.UIListLayout.AbsoluteContentSize.Y)
    
    MessageLog = MessageLog .. tostring("[Chat]") .. "[".. tostring(speaker) .."] - " .. tostring(Msg) .. "\n"

    if readfile("ChatLoggerV1.lua") then
        writefile("ChatLoggerV1.lua",MessageLog)
    end
end

function IsChatting(plr)
    local Speaker = plr.Name
    plr.Chatted:Connect(function(MsgToRead)
        Message(tostring(Speaker),MsgToRead)
    end)
end

local StringToCopy = "";
CopyAll.MouseButton1Click:Connect(function()
    local GetLabel = Paths.ScrollingUI:FindFirstChildOfClass("TextLabel")
    if GetLabel and GetLabel.Text ~= nil and GetLabel.Text ~= "" and GetLabel.Text ~= " " then
        for _,LoggedMessage in next, Paths.ScrollingUI:GetChildren() do 
            if LoggedMessage:IsA("TextLabel") then 
                StringToCopy = StringToCopy .. tostring(LoggedMessage.Text) .. "\n"
            end
        end
    end
    setclipboard(StringToCopy)
end)

ClearAll.MouseButton1Click:Connect(function()
    local GetLabel = Paths.ScrollingUI:FindFirstChildOfClass("TextLabel")
    if GetLabel then
        for _,LoggedMessage in next, Paths.ScrollingUI:GetChildren() do 
            if LoggedMessage:IsA("TextLabel") then 
                LoggedMessage:Destroy();
            end
        end
    end
end)

game:GetService("Players").PlayerAdded:Connect(IsChatting)


for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    IsChatting(v)
end
