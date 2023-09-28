-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\AVAS_QScan_Machine\0x0000127e_luac 

-- params : ...
-- function num : 0
(MpDetection.ScanResource)("rootcert://")
local l_0_0 = {}
local l_0_1, l_0_2 = pcall(Infrastructure_ScanFileLessMalware)
if not l_0_1 then
  l_0_0.ScanFileLessMalware = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
l_0_1 = pcall(Infrastructure_ScanEvotobExclusion)
if not l_0_1 then
  l_0_0.ScanEvotobExclusion = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC38: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanDetrahere)
if not l_0_1 then
  l_0_0.ScanDetrahere = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC56: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(MpDetection.ScanResource, "regkeyvalue://hklm\\software\\policies\\microsoft\\windows\\windowsupdate\\\\WUServer")
if not l_0_1 then
  l_0_0.ScanResource_WUServer = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC74: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(MpDetection.ScanResource, "regkeyvalue://hklm\\system\\currentcontrolset\\services\\\\rpcsrv")
if not l_0_1 then
  l_0_0.ScanResource_rpcsrv = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC92: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(MpDetection.ScanResource, "file://%ProgramData%\\Deliver\\sclm.dll")
if not l_0_1 then
  l_0_0.ScanResource_sclm = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC110: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(MpDetection.ScanResource, "regkeyvalue://hklm\\system\\currentcontrolset\\control\\secureboot\\state\\\\policypublisher")
if not l_0_1 then
  l_0_0.ScanResource_policypublisher = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC126: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanBITSJobs)
if not l_0_1 then
  l_0_0.ScanBITSJobs = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC143: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanSuweezy, "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not l_0_1 then
  l_0_0.ScanSuweezy_Defender = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC160: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanSuweezy, "HKLM\\SOFTWARE\\Microsoft\\Microsoft Antimalware\\Exclusions\\Paths")
if not l_0_1 then
  l_0_0.ScanSuweezy_Antimalware = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC177: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_NeobarReportPathExclusions, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not l_0_1 then
  l_0_0.NeobarReportPathExclusions_Policies = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC194: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_NeobarReportPathExclusions, "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not l_0_1 then
  l_0_0.NeobarReportPathExclusions = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC211: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_SoctuseerReportPathExclusions, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not l_0_1 then
  l_0_0.SoctuseerReportPathExclusions_Policies = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC228: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_SoctuseerReportPathExclusions, "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not l_0_1 then
  l_0_0.SoctuseerReportPathExclusions = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
local l_0_3 = function()
  -- function num : 0_0
  local l_1_0 = (MpCommon.QueryDynamicConfigString)("MpExtraAsepScanLocations")
  for l_1_4 in (string.gmatch)(l_1_0, "([^|]+)") do
    (MpDetection.ScanResource)(l_1_4)
  end
end

-- DECOMPILER ERROR at PC245: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(l_0_3)
if not l_0_1 then
  l_0_0.ScanExtraAseps = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC261: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanWDFirewallBlockRules)
if not l_0_1 then
  l_0_0.ScanWDFirewallBlockRules = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC277: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanKryptomixASEPKeyPath)
if not l_0_1 then
  l_0_0.ScanKryptomixASEPKeyPath = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC293: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_AntiTamperingCheckAndRepair)
if not l_0_1 then
  l_0_0.AntiTamperingCheckAndRepair = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC309: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_MSRTDASTelemetry)
if not l_0_1 then
  l_0_0.MSRTDASTelemetry = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC325: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanMpCfgDefaults)
if not l_0_1 then
  l_0_0.ScanMpCfgDefaults = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC341: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanEmotetV5)
if not l_0_1 then
  l_0_0.ScanEmotetV5 = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC357: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanADFSPath)
if not l_0_1 then
  l_0_0.ScanADFSPath = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC373: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_NewmanScan)
if not l_0_1 then
  l_0_0.NewmanScan = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC389: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_3CXScan)
if not l_0_1 then
  l_0_0["3CXScan"] = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC405: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanUefiEnvironmentVariables)
if not l_0_1 then
  l_0_0.ScanUefiEnvironmentVariables = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC421: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_DLAMTelemetry)
if not l_0_1 then
  l_0_0.DLAMTelemetry = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC438: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_AsrLinkScan, "qscanmachine")
if not l_0_1 then
  l_0_0.Infrastructure_AsrLinkScan = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC454: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ExclusionTelemetry)
if not l_0_1 then
  l_0_0.ExclusionTelemetry = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC470: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_FirstTimeAT)
if not l_0_1 then
  l_0_0.FirstTimeAT = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC486: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanEFISystemPartitions)
if not l_0_1 then
  l_0_0.ScanEFISystemPartitions = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC502: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_MicrosoftIRScan)
if not l_0_1 then
  l_0_0.MicrosoftIRScan = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
if next(l_0_0) ~= nil then
  error((MpCommon.JsonSerialize)(l_0_0))
end

