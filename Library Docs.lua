Welcome to Zell Hub Library v2 Documentation!

-- Creating your BoxUI and Tabs
local Example = library:CreateUI(<string, Name>)
local Tab1 = Example:library:Create_Tab(<string, Name>)

-- Default Visible Tab
Tab1:SetVisible(bool)

-- SetButton
Example:SetButton1(<string, Name>, <function callback>)

-- Setting a List
Example:SetList(<string, Name>,<table list>)

-- Creating UI Instances 

Tab1:Label(<string, Name>)

Tab1:Button(<string, Name>, <function callback);

Tab1:Toggle(<string, Name>, <function, Callback>);

Tab1:Box(<string, Name>, <function callback);

Tab1:Slider(<string, Name>, <table data>, <function callback);
-- Example Data {Min = 0, Max = 100, default = 10, precise = false}

Tab1:Bind(<string, Name>, <table data> , <function callback)
-- Example Data {default = Enum.KeyCode.E}

Tab1:Bind("Bind Example",{default = Enum.KeyCode.E},function(MotherFucker)

Tab1:Dropdown(<string, Name>, <table list>, <function callback)

-- ColorPicker coming soon 
