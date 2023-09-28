-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileDropByExplorerOverRdpA\0x00000420_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if l_0_0 ~= "explorer.exe" then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2, l_0_3 = pcall(MpCommon.QuerySessionInformation, l_0_1, MpCommon.WTSIsRemoteSession)
if not l_0_2 or not l_0_3 then
  return mp.CLEAN
end
TrackPidAndTechnique(l_0_1, "T1021.001", "is_remote_desktop_connection")
if (mp.IsHipsRuleEnabled)("d1e49aac-8f56-4280-b9ba-993a6d77406c") or (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") or (mp.get_mpattribute)("Lua:TT:DetectionThresholdMet") then
  return mp.INFECTED
end
return mp.CLEAN

