-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a32_luac 

-- params : ...
-- function num : 0
local l_0_0 = "system32\\shell32.dll"
local l_0_1 = (mp.ContextualExpandEnvironmentVariables)("%temp%\\") .. l_0_0
local l_0_2 = (mp.ContextualExpandEnvironmentVariables)("%temp%\\low\\") .. l_0_0
if (sysio.IsFileExists)(l_0_1) then
  (bm.add_related_file)(l_0_1)
  ;
  (mp.ReportLowfi)(l_0_1 .. "\000", 1695212180)
end
if (sysio.IsFileExists)(l_0_2) then
  (bm.add_related_file)(l_0_2)
  ;
  (mp.ReportLowfi)(l_0_2 .. "\000", 1695212180)
end
return mp.INFECTED

