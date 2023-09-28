-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaEmailSendInStealthS10\0x00000184_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or (string.len)(l_0_0) < 30 or (string.len)(l_0_0) > 1000 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\transportroles\\pickup\\msg", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED

