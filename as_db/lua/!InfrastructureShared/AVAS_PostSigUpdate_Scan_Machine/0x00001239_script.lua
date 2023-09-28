-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\AVAS_PostSigUpdate_Scan_Machine\0x00001239_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
local l_0_1, l_0_2 = pcall(Infrastructure_NeobarReportPathExclusions, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not l_0_1 then
  l_0_0.NeobarReportPathExclusions_Policies = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
l_0_1 = pcall(Infrastructure_NeobarReportPathExclusions, "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not l_0_1 then
  l_0_0.NeobarReportPathExclusions = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC37: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_SoctuseerReportPathExclusions, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not l_0_1 then
  l_0_0.SoctuseerReportPathExclusions_Policies = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC54: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_SoctuseerReportPathExclusions, "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if not l_0_1 then
  l_0_0.SoctuseerReportPathExclusions = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC70: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanWDFirewallBlockRules)
if not l_0_1 then
  l_0_0.ScanWDFirewallBlockRules = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC86: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_AntiTamperingCheckAndRepair)
if not l_0_1 then
  l_0_0.AntiTamperingCheckAndRepair = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC102: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanEFISystemPartitions)
if not l_0_1 then
  l_0_0.ScanEFISystemPartitions = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC118: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_FirstTimeAT)
if not l_0_1 then
  l_0_0.FirstTimeAT = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC134: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanLeviathon)
if not l_0_1 then
  l_0_0.ScanLeviathon = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC150: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanCFABootProtState)
if not l_0_1 then
  l_0_0.ScanCFABootProtState = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC166: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanMpEtwPublisher)
if not l_0_1 then
  l_0_0.ScanMpEtwPublisher = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC182: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_DLAMTelemetry)
if not l_0_1 then
  l_0_0.DLAMTelemetry = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC198: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ExclusionTelemetry)
if not l_0_1 then
  l_0_0.ExclusionTelemetry = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC215: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_AsrLinkScan, "postsig")
if not l_0_1 then
  l_0_0.AsrLinkScan = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
if next(l_0_0) ~= nil then
  error((MpCommon.JsonSerialize)(l_0_0))
end

