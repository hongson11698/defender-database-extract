-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000123d_luac 

-- params : ...
-- function num : 0
GetRuleInfo = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0.Name = "Block Process Creations originating from PSExec & WMI commands"
  l_1_0.Description = "Windows Defender Exploit Guard detected remoting application (wmiprvse and psexesvc) creating child process"
  l_1_0.NotificationDedupingInterval = 120
  l_1_0.NotificationDedupingScope = HIPS.DEDUPE_SCOPE_UI
  return l_1_0
end

GetMonitoredLocations = function()
  -- function num : 0_1
  local l_2_0 = {}
  l_2_0["%windir%\\system32\\wbem\\WmiPrvSE.exe"] = 2
  l_2_0["%windir%\\PSEXESVC.exe"] = 2
  return 1, l_2_0
end

GetPathExclusions = function()
  -- function num : 0_2
  local l_3_0 = {}
  l_3_0["%windir%\\system32\\wbem\\WmiPrvSE.exe"] = 2
  l_3_0["%windir%\\system32\\wbem\\mofcomp.exe"] = 2
  l_3_0["%windir%\\system32\\svchost.exe"] = 2
  l_3_0["%windir%\\system32\\WerFault.exe"] = 2
  l_3_0["%windir%\\system32\\wuauclt.exe"] = 2
  l_3_0["%windir%\\system32\\gpupdate.exe"] = 2
  l_3_0["%windir%\\SysWOW64\\wbem\\WmiPrvSE.exe"] = 2
  l_3_0["%windir%\\SysWOW64\\wbem\\mofcomp.exe"] = 2
  l_3_0["%windir%\\SysWOW64\\svchost.exe"] = 2
  l_3_0["%windir%\\SysWOW64\\WerFault.exe"] = 2
  l_3_0["%windir%\\SysWOW64\\wuauclt.exe"] = 2
  l_3_0["%windir%\\SysWOW64\\gpupdate.exe"] = 2
  l_3_0["%windir%\\system32\\spool\\drivers"] = 2
  l_3_0["%windir%\\system32\\fsiso.exe"] = 2
  l_3_0["%windir%\\PSEXESVC.exe"] = 2
  l_3_0["%windir%\\Temp\\*\\DismHost.exe"] = 2
  l_3_0["%systemdrive%\\MDE\\Tools\\MDEClientAnalyzer.exe"] = 2
  l_3_0["%systemdrive%\\*\\Tools\\MDATPClientAnalyzer.exe"] = 2
  l_3_0["%systemdrive%\\*\\WDATPDeploy\\MDATPClientAnalyzer\\MDATPClientAnalyzer.exe"] = 2
  l_3_0["%windir%\\CCM\\Ccm32BitLauncher.exe"] = 2
  return l_3_0
end

GetCommandLineExclusions = function()
  -- function num : 0_3
  local l_4_0 = ".:\\\\windows\\\\ccmcache\\\\.+"
  local l_4_1 = ".:\\\\windows\\\\ccm\\\\systemtemp\\\\.+"
  local l_4_2 = ".:\\\\windows\\\\ccm\\\\sensorframework\\\\.+"
  local l_4_3 = ".:\\\\windows\\\\ccm\\\\signedscripts\\\\.+"
  local l_4_4 = "cmd[^\\s]*\\s+/c\\s+\\\"chcp\\s+65001\\s+&\\s+.:\\\\windows\\\\system32\\\\inetsrv\\\\appcmd\\.exe\\s+list[^>]+>\\s+\\\"\\\\\\\\127\\.0\\.0\\.1\\\\.\\$\\\\temp\\\\[^\\\"]+\\\"\\s+2>&1\\\""
  local l_4_5 = ".:\\\\windows\\\\temp\\\\nessus_[^\\.]+\\.tmp\\s+(.:\\\\windows\\\\temp\\\\)?nessus_[^\\.]+\\.txt"
  local l_4_6 = {}
  l_4_6[l_4_0] = 0
  l_4_6[l_4_1] = 0
  l_4_6[l_4_2] = 0
  l_4_6[l_4_3] = 0
  l_4_6[l_4_4] = 0
  l_4_6[l_4_5] = 0
  return l_4_6
end

GetCommandLineRegExp = function()
  -- function num : 0_4
  return "cmd(\\.exe)?\\s+\\/c\\s+\\\"*(.:\\\\.+\\.cmd)\\\"*"
end


