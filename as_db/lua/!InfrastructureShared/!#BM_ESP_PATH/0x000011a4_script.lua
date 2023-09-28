-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BM_ESP_PATH\0x000011a4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS)
if not l_0_1 then
  return mp.CLEAN
end
if (mp.bitand)(l_0_1, 1) == 1 then
  (mp.set_mpattribute)("FILE_REMOVABLE_MEDIA")
end
if (mp.bitand)(l_0_1, 2) == 2 then
  (mp.set_mpattribute)("FILE_READ_ONLY_DEVICE")
end
if (mp.bitand)(l_0_1, 16) == 16 then
  (mp.set_mpattribute)("FILE_REMOTE_DEVICE")
end
if (mp.bitand)(l_0_1, 32) == 32 then
  (mp.set_mpattribute)("FILE_DEVICE_IS_MOUNTED")
end
if (mp.bitand)(l_0_1, 2048) == 2048 then
  (mp.set_mpattribute)("FILE_CHARACTERISTIC_PNP_DEVICE")
end
if (mp.bitand)(l_0_1, 262144) == 262144 then
  (mp.set_mpattribute)("FILE_PORTABLE_DEVICE")
end
if (mp.bitand)(l_0_1, 264193) ~= 0 then
  return mp.CLEAN
end
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if not l_0_2 then
  return mp.CLEAN
end
if l_0_2:find("\\harddiskvolume..?\\efi\\", 8) then
  local l_0_3 = (MpCommon.ExpandEnvironmentVariables)("%SystemRoot%")
  if l_0_3 and not (string.find)(l_0_3, "%", 5, true) then
    local l_0_4 = (sysio.GetFileFsVolumeInformation)(l_0_3)
    if l_0_4 then
      local l_0_5 = (sysio.GetFileFsVolumeInformation)(l_0_2)
      if l_0_5 and l_0_4.VolumeSerialNumber == l_0_5.VolumeSerialNumber then
        return mp.CLEAN
      end
    end
  end
  do
    do
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

