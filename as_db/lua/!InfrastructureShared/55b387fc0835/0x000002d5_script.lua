-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\55b387fc0835\0x000002d5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
if (string.find)(l_0_1, "\\program files", 1, true) or (string.find)(l_0_1, "\\netlogon\\", 1, true) or (string.find)(l_0_1, "\\sysvol\\", 1, true) or (string.find)(l_0_1, "/nologo ", 1, true) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1071", "command_control_g")
return mp.INFECTED

