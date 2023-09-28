-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\62b30cc4a3a3\0x0000143f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.ppid == nil or l_0_0.command_line == nil then
  return mp.CLEAN
end
if isParentPackageManager(l_0_0.ppid, true) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1036.004", "DefenseEvasion_MasqueradeTaskOrService_Cron")
TrackPidAndTechniqueBM("BM", "T1036.005", "DefenseEvasion_MasqueradeNameOrPath_Cron")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED

