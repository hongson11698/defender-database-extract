-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000414_luac 

-- params : ...
-- function num : 0
GetRuleInfo = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0.Name = "Aplha Test for ASR in Audit Mode"
  l_1_0.Description = "Generic ASR Audit mode use for unit testing"
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
  l_3_0["%windir%\\PSEXESVC.exe"] = 2
  l_3_0["%windir%\\Temp\\*\\DismHost.exe"] = 2
  l_3_0["%systemdrive%\\*\\Tools\\MDATPClientAnalyzer.exe"] = 2
  l_3_0["%systemdrive%\\*\\WDATPDeploy\\MDATPClientAnalyzer\\MDATPClientAnalyzer.exe"] = 2
  l_3_0["%windir%\\CCM\\Ccm32BitLauncher.exe"] = 2
  return l_3_0
end

GetCommandLineExclusions = function()
  -- function num : 0_3
  local l_4_0 = ".:\\\\windows\\\\ccmcache\\\\.+"
  local l_4_1 = ".:\\\\windows\\\\ccm\\\\systemtemp\\\\.+"
  local l_4_2 = {}
  l_4_2[l_4_0] = 0
  l_4_2[l_4_1] = 0
  return l_4_2
end


