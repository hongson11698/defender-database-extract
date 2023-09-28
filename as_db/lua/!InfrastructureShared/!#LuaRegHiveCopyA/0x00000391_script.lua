-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaRegHiveCopyA\0x00000391_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
l_0_0 = (string.lower)(l_0_0)
if (string.find)(l_0_0, "\\windows\\system32\\config\\s", 1, true) or (string.find)(l_0_0, "\\windows\\system32\\config\\regback\\s", 1, true) or (string.find)(l_0_0, "\\sppcbshivestore\\", 1, true) or (string.find)(l_0_0, "\\adaptivacache\\os", 1, true) or (string.find)(l_0_0, "\\sources\\install", 1, true) or (string.find)(l_0_0, "\\amp\\tmp\\", 1, true) or (string.find)(l_0_0, "\\ntuser.dat", 1, true) or (string.find)(l_0_0, "\\docker\\windowsfilter\\", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if (string.find)(l_0_1, "ir_agent.exe", 1, true) or (string.find)(l_0_1, "ccsvchst.exe", 1, true) or (string.find)(l_0_1, "mssense.exe", 1, true) or (string.find)(l_0_1, "userprofilemanager.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

