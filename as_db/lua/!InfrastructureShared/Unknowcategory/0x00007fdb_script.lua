-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007fdb_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.command_line
local l_0_2 = (string.match)(l_0_1, "(%a:\\[^\"]-%.ps1)")
l_0_1 = (string.lower)(l_0_1)
if (string.find)(l_0_1, ":\\program files", 1, true) or (string.find)(l_0_1, "\\windows defender advanced threat protection\\", 1, true) or (string.find)(l_0_1, "sentinel", 1, true) or (string.find)(l_0_1, "format-list", 1, true) or (string.find)(l_0_1, "-outputformat", 1, true) or (string.find)(l_0_1, "get-vm", 1, true) then
  return mp.CLEAN
end
if l_0_2 and (sysio.IsFileExists)(l_0_2) then
  (mp.ReportLowfi)(l_0_2, 1120308759)
  ;
  (bm.add_related_file)(l_0_2)
end
return mp.INFECTED

