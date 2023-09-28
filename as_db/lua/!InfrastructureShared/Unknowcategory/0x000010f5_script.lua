-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000010f5_luac 

-- params : ...
-- function num : 0
GetRuleInfo = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0.Name = "Block rebooting machine in Safe Mode"
  l_1_0.Description = "Windows Defender Exploit Guard detected system changes to reboot machine in Safe Mode"
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
  l_3_0["%systemroot%\\system32\\bcdedit.exe"] = 2
  l_3_0["%systemroot%\\syswow64\\bcdedit.exe"] = 2
  l_3_0["%systemroot%\\system32\\bootcfg.exe"] = 2
  l_3_0["%systemroot%\\syswow64\\bootcfg.exe"] = 2
  return l_3_0
end

GetCommandLineInclusions = function()
  -- function num : 0_3
  local l_4_0 = "bcdedit(\\.exe)?[\\s\\\"]+/set\\s+\\{[^\\}]+\\}\\s+safeboot"
  local l_4_1 = "bootcfg(\\.exe)?[\\s\\\"]+/raw\\s+/a\\s+/safeboot"
  local l_4_2 = {}
  l_4_2[l_4_0] = 0
  l_4_2[l_4_1] = 0
  return l_4_2
end


