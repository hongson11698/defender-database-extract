-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELLuaContextualOff\0x0000018a_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) ~= true then
  return mp.CLEAN
end
if GetCtxOfficeProc() ~= "productivity2" then
  return mp.CLEAN
end
local l_0_0 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
l_0_0 = (l_0_0 == nil and "" or l_0_0):lower()
local l_0_1 = (MpCommon.ExpandEnvironmentVariables)("%windir%")
l_0_1 = (l_0_1 == nil and "" or l_0_1):lower()
if l_0_0 ~= l_0_1 then
  return mp.CLEAN
end
return mp.INFECTED

