-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\dfb3bcd87f92\0x00007d68_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
if (string.find)(l_0_1, "regbackup3", 1, true) or (string.find)(l_0_1, "\\rapid7\\", 1, true) then
  return mp.CLEAN
end
sms_untrusted_process()
pcall(add_parents, "-1", 5)
TrackPidAndTechniqueBM("BM", "T1003.002", "credentialdumping", 86400)
return mp.INFECTED

