-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\45b300bdc669\0x0000033e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
if (string.find)(l_0_1, "\\program files", 1, true) or (string.find)(l_0_1, "srtasks.exe", 1, true) or (string.find)(l_0_1, "rstrui.exe", 1, true) or (string.find)(l_0_1, "executescheduledsppcreation", 1, true) or (string.find)(l_0_1, "\\windows defender advanced threat protection\\", 1, true) or (string.find)(l_0_1, "wbengine.exe", 1, true) or (string.find)(l_0_1, "veeam", 1, true) or (string.find)(l_0_1, "\\purlieu", 1, true) or (string.find)(l_0_1, "cmimageworker.exe", 1, true) or (string.find)(l_0_1, "searchprotocolhost.exe", 1, true) or (string.find)(l_0_1, "searchindexer.exe", 1, true) or (string.find)(l_0_1, "beremote", 1, true) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1003.002", "credentialdumping")
return mp.INFECTED

