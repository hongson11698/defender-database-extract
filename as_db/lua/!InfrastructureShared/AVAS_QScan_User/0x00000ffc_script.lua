-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\AVAS_QScan_User\0x00000ffc_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
;
(MpDetection.ScanResource)("rootcertuser://")
local l_0_1, l_0_2 = pcall(Infrastructure_ScanBedep)
if not l_0_1 then
  l_0_0.ScanBedep = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
l_0_1 = pcall(Infrastructure_RetliftenScan)
if not l_0_1 then
  l_0_0.RetliftenScan = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC39: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_AsrLinkScan, "qscanuser")
if not l_0_1 then
  l_0_0.RetliftenScan = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
-- DECOMPILER ERROR at PC55: Overwrote pending register: R2 in 'AssignReg'

l_0_1 = pcall(Infrastructure_ScanEFISystemPartitions)
if not l_0_1 then
  l_0_0.ScanEFISystemPartitions = l_0_2
  if l_0_2 == "Scanning aborted by the user!" then
    error((MpCommon.JsonSerialize)(l_0_0))
  end
end
if next(l_0_0) ~= nil then
  error((MpCommon.JsonSerialize)(l_0_0))
end

