-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\8bb3a22fe2c7\0x00000802_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.command_line ~= nil then
  bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil)
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1021.002", "proc_launch_from_share")
  return mp.INFECTED
end
return mp.CLEAN

