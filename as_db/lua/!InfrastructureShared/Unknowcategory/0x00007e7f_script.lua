-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e7f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
if (string.find)(l_0_1, "\\program files", 1, true) or (string.find)(l_0_1, "/azure/", 1, true) or (string.find)(l_0_1, "assist.itnow.net", 1, true) or (string.find)(l_0_1, "/dkbrookie", 1, true) or (string.find)(l_0_1, "/sysmon", 1, true) or (string.find)(l_0_1, "/completeitltd", 1, true) or (string.find)(l_0_1, "/compassmsp", 1, true) or (string.find)(l_0_1, "/braingears/", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

