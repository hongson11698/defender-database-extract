-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006df_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("WPADExploitAttempt.seen") then
  return mp.CLEAN
end
local l_0_0 = nil
l_0_0 = (this_sigattrlog[2]).utf8p1
local l_0_1 = (string.lower)(l_0_0)
local l_0_2 = (string.lower)((this_sigattrlog[2]).utf8p2)
if l_0_1 == nil or (string.find)(l_0_1, "rundll32.exe", 1, true) and ((string.find)(l_0_2, "davclnt.dll", 1, true) or (string.find)(l_0_2, "winethc.dll", 1, true)) then
  return mp.CLEAN
end
local l_0_3 = (this_sigattrlog[3]).utf8p1
if (string.find)(l_0_3, "\\[^\\]*[a-zA-Z-][^\\]*[.]cache", 1, false) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\windows\\", 1, true) and ((string.find)(l_0_1, "werfault.exe$", 1, false) or (string.find)(l_0_1, "wermgr.exe$", 1, false) or (string.find)(l_0_1, "taskhostw.exe") or (string.find)(l_0_1, "consent.exe")) then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\program files", 1, true) and (string.find)(l_0_1, "\\diebold\\warsaw\\core.exe$", 1, false) then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\programdata\\microsoft\\windows\\devicesoftwareupdates\\", 1, true) then
  return mp.CLEAN
end
l_0_3 = (mp.ContextualExpandEnvironmentVariables)(l_0_3)
if (sysio.IsFileExists)(l_0_3) then
  (bm.add_related_file)(l_0_3)
  ;
  (mp.ReportLowfi)(l_0_3, 1402450356)
end
if (sysio.IsFileExists)(l_0_0) then
  (bm.add_related_file)(l_0_0)
end
return mp.INFECTED

