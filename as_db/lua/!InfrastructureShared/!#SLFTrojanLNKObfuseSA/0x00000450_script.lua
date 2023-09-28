-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanLNKObfuseSA\0x00000450_luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = 0
  if not l_1_0 then
    return l_1_1
  end
  for l_1_5 in l_1_0 do
    l_1_1 = l_1_1 + 1
  end
  return l_1_1
end

local l_0_1 = nil
if not (mp.get_mpattribute)("PACKED_WITH:[CMDEmbedded]") then
  return mp.CLEAN
end
l_0_1 = tostring(headerpage)
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if l_0_0((string.gmatch)(l_0_1, "||")) >= 3 or l_0_0((string.gmatch)(l_0_1, "&")) >= 3 then
  return mp.INFECTED
end
return mp.CLEAN

