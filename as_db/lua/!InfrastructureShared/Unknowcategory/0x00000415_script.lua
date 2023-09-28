-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000415_luac 

-- params : ...
-- function num : 0
GetRuleInfo = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0.Name = "Controlled folder access"
  l_1_0.Description = "Windows Defender Exploit Guard detected the unauthorized modification of files in protected folder"
  return l_1_0
end

GetPathExclusions = function()
  -- function num : 0_1
  local l_2_0 = {}
  l_2_0["%windir%\\SysWOW64\\WerFault.exe"] = 2
  l_2_0["%windir%\\system32\\WerFault.exe"] = 2
  l_2_0.Registry = 0
  l_2_0.MemCompression = 0
  l_2_0["%windir%\\system32\\bcdedit.exe"] = 2
  l_2_0["%windir%\\system32\\MBR2GPT.EXE"] = 2
  l_2_0["%windir%\\system32\\CompatTelRunner.exe"] = 2
  l_2_0["%windir%\\system32\\ReAgentc.exe"] = 2
  l_2_0["%windir%\\SysWOW64\\wbem\\WmiPrvSE.exe"] = 2
  l_2_0["%windir%\\system32\\wbem\\WmiPrvSE.exe"] = 2
  l_2_0["%windir%\\system32\\chkdsk.exe"] = 2
  l_2_0["%windir%\\system32\\omadmclient.exe"] = 2
  l_2_0["%windir%\\system32\\SearchIndexer.exe"] = 2
  l_2_0["%windir%\\system32\\taskhostw.exe"] = 2
  l_2_0["%windir%\\MpTaskBarRecover.exe"] = 2
  l_2_0["%windir%\\MpRecoverTaskbar.exe"] = 2
  l_2_0["%windir%\\system32\\services.exe"] = 2
  l_2_0["%localappdata%\\microsoft\\Teams\\Update.exe"] = 1
  l_2_0["%systemdrive%\\$WINDOWS.~BT\\Sources\\SetupHost.exe"] = 2
  l_2_0["%systemdrive%\\$WINDOWS.~BT\\Work\\*\\DismHost.exe"] = 2
  l_2_0["%temp%\\*\\DismHost.exe"] = 1
  l_2_0["%windir%\\system32\\poqexec.exe"] = 2
  l_2_0["%windir%\\winsxs\\*\\TiWorker.exe"] = 2
  l_2_0["%windir%\\system32\\PackagedCWALauncher.exe"] = 2
  l_2_0["%windir%\\SysWOW64\\PackagedCWALauncher.exe"] = 2
  l_2_0["%windir%\\system32\\oobe\\SetupPlatform\\SetupPlatform.exe"] = 2
  l_2_0["%windir%\\SoftwareDistribution\\Download\\*\\WindowsUpdateBox.exe"] = 2
  l_2_0["%windir%\\system32\\MoUsoCoreWorker.exe"] = 2
  l_2_0["%windir%\\UUS\\amd64\\MoUsoCoreWorker.exe"] = 2
  l_2_0["%windir%\\UUS\\arm64\\MoUsoCoreWorker.exe"] = 2
  l_2_0["%programdata%\\Microsoft\\Windows\\UUS\\Packages\\*\\amd64\\MoUsoCoreWorker.exe"] = 2
  l_2_0["%windir%\\system32\\wuaucltcore.exe"] = 2
  l_2_0["%windir%\\UUS\\amd64\\wuaucltcore.exe"] = 2
  l_2_0["%windir%\\UUS\\arm64\\wuaucltcore.exe"] = 2
  l_2_0["%programdata%\\Microsoft\\Windows\\UUS\\Packages\\*\\amd64\\wuaucltcore.exe"] = 2
  return l_2_0
end


