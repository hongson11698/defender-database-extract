-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFPERTrojanWin64UniformCity\0x00000fe5_luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
local l_0_1 = ""
local l_0_2 = ""
local l_0_3 = (sysio.GetFileFsVolumeInformation)("C:")
if l_0_3 ~= nil and l_0_3.VolumeSerialNumber ~= nil then
  l_0_0 = (string.format)("%x", l_0_3.VolumeSerialNumber)
end
local l_0_4 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Cryptography")
if l_0_4 ~= nil then
  l_0_1 = (sysio.GetRegValueAsString)(l_0_4, "MachineGuid")
end
l_0_2 = (MpCommon.ExpandEnvironmentVariables)("%COMPUTERNAME%")
do
  if l_0_0 ~= "" and l_0_1 ~= "" and l_0_2 ~= "" then
    local l_0_5 = (string.format)("%s;%s;%s", l_0_0, l_0_1, l_0_2)
    l_0_5 = (MpCommon.Base64Encode)(l_0_5)
    ;
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=DhaDeviceInfo=%s", l_0_5))
  end
  return mp.INFECTED
end

