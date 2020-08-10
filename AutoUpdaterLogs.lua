local MainTable = {};
local Count = 0

local AddTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/Snakeboy99/ZellyHub/master/TableGrab"))();

for i,v in pairs(AddTable) do
    MainTable[#MainTable + 1] = {
      ResponseText = tostring(i);
      StatSign = tostring(v);
      OrderNum = Count;
    }
     Count = Count + 1
end

return MainTable;
