-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAProgramWin32ComputraceA\0x00000d5e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\system32", 1, true) ~= nil then
  return mp.INFECTED
end
if (string.find)(l_0_0, "\\syswow64", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

