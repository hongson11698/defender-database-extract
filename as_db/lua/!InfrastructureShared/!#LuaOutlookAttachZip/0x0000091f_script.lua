-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaOutlookAttachZip\0x0000091f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
if l_0_0:find("\\inetcache\\content.outlook\\", 1, true) ~= nil and (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "outlook.exe" then
  return mp.INFECTED
end
return mp.CLEAN

