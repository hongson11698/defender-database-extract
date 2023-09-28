-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000454_luac 

-- params : ...
-- function num : 0
GetRuleInfo = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0.Name = "Use advanced protection against ransomware"
  l_1_0.Description = "Windows Defender Exploit Guard detected execution of file that exhibit characteristics similar to ransomware"
  l_1_0.NotificationDedupingInterval = 120
  l_1_0.NotificationDedupingScope = HIPS.DEDUPE_SCOPE_UI
  return l_1_0
end

GetMonitoredLocations = function()
  -- function num : 0_1
  return HIPS.MONITOR_PROCESSCREATE
end

GetPathInclusions = function()
  -- function num : 0_2
  local l_3_0 = {}
  l_3_0["%systemroot%\\system32\\vssadmin.exe"] = 2
  l_3_0["%systemroot%\\system32\\wbem\\wmic.exe"] = 2
  l_3_0["%systemroot%\\syswow64\\wbem\\wmic.exe"] = 2
  return l_3_0
end

GetCommandLineInclusions = function()
  -- function num : 0_3
  local l_4_0 = "vssadmin(\\.exe)?[\\s\\\"]+delete\\s+shadows"
  local l_4_1 = "wmic(\\.exe)?[\\s\\\"]+shadowcopy\\s+delete"
  local l_4_2 = {}
  l_4_2[l_4_0] = 0
  l_4_2[l_4_1] = 0
  return l_4_2
end


