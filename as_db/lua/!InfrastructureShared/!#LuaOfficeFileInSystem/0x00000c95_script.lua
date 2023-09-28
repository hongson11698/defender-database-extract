-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaOfficeFileInSystem\0x00000c95_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if (string.find)(l_0_0, ":\\windows\\system32\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

