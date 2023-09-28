-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b9b3c26d4322\0x0000090a_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
if l_0_0 then
  bm_AddRelatedFileFromCommandLine(l_0_1.command_line, nil, nil, 1)
  TrackPidAndTechniqueBM(l_0_1.ppid, "T1562.001", "psver2_amsi_bypass")
end
return mp.INFECTED

