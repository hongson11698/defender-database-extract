-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\45b3a616cc6c\0x000002f5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
if (string.find)(l_0_1, "\\program files", 1, true) or (string.find)(l_0_1, "\\netlogon\\", 1, true) or (string.find)(l_0_1, "\\sysvol\\", 1, true) or (string.find)(l_0_1, "\\fidelity", 1, true) or (string.find)(l_0_1, "\\dslogon\\", 1, true) or (string.find)(l_0_1, "\\opmanager\\", 1, true) or (string.find)(l_0_1, "/nologo ", 1, true) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1095", "command_control_h")
return mp.INFECTED
