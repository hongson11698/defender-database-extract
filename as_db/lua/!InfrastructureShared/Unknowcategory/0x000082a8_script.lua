-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000082a8_luac 

-- params : ...
-- function num : 0
ToGUID = function(l_1_0, l_1_1)
  -- function num : 0_0
  return (string.format)("%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", l_1_0[l_1_1 + 3], l_1_0[l_1_1 + 2], l_1_0[l_1_1 + 1], l_1_0[l_1_1], l_1_0[l_1_1 + 5], l_1_0[l_1_1 + 4], l_1_0[l_1_1 + 7], l_1_0[l_1_1 + 6], l_1_0[l_1_1 + 8], l_1_0[l_1_1 + 9], l_1_0[l_1_1 + 10], l_1_0[l_1_1 + 11], l_1_0[l_1_1 + 12], l_1_0[l_1_1 + 13], l_1_0[l_1_1 + 14], l_1_0[l_1_1 + 15])
end

local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_AMSI then
  return mp.CLEAN
end
local l_0_1, l_0_2 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME)
if l_0_2 ~= "VSSAMSI" then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("MpVssAmsiScan")
local l_0_3 = (mp.readu_u32)(headerpage, 1)
local l_0_4 = (mp.readu_u32)(headerpage, 5)
local l_0_5 = (mp.readu_u64)(headerpage, 9)
local l_0_6 = (mp.readu_u32)(headerpage, 17)
local l_0_7 = (mp.readu_u64)(headerpage, 21)
if l_0_3 ~= 0 then
  (mp.set_mpattributeex)("VSSAMSI_Version", l_0_3)
end
if l_0_5 ~= 0 then
  (mp.set_mpattributeex)("VSSAMSI_ProcessStartKey", l_0_5)
end
if l_0_6 ~= 0 then
  (mp.set_mpattributeex)("VSSAMSI_CallerPID", l_0_6)
end
if l_0_7 ~= 0 then
  (mp.set_mpattributeex)("VSSAMSI_ProcessStartTime", l_0_7)
end
if l_0_4 == 0 then
  (mp.set_mpattribute)("VSSAMSI_Shadow_Delete")
  local l_0_8 = ToGUID(headerpage, 29)
  local l_0_9 = (mp.readu_u32)(headerpage, 45)
  local l_0_10 = (mp.readu_u32)(headerpage, 49)
  if l_0_8 ~= 0 then
    (mp.set_mpattribute)("VSSAMSI_Delete_ID:" .. l_0_8)
  end
  if l_0_9 == 0 then
    (mp.set_mpattribute)("VSSAMSI_Delete_Object_Unknown")
  else
    if l_0_9 == 1 then
      (mp.set_mpattribute)("VSSAMSI_Delete_Object_None")
    else
      if l_0_9 == 2 then
        (mp.set_mpattribute)("VSSAMSI_Delete_Object_SnapshotSet")
      else
        if l_0_9 == 3 then
          (mp.set_mpattribute)("VSSAMSI_Delete_Object_Snapshot")
        else
          if l_0_9 == 4 then
            (mp.set_mpattribute)("VSSAMSI_Delete_Object_Provider")
          else
            ;
            (mp.set_mpattribute)("VSSAMSI_Delete_Object_Reserved")
          end
        end
      end
    end
  end
  if l_0_10 == 1 then
    (mp.set_mpattribute)("VSSAMSI_Delete_ForceDelete")
  end
else
  do
    if l_0_4 == 1 then
      (mp.set_mpattribute)("VSSAMSI_Shadow_Resize")
      local l_0_11 = (mp.readu_u64)(headerpage, 29)
      local l_0_12 = (mp.readu_u32)(headerpage, 37)
      if l_0_11 ~= 0 then
        (mp.set_mpattributeex)("VSSAMSI_Resize_DiffAreaSize", l_0_11)
      else
        ;
        (mp.set_mpattribute)("VSSAMSI_Resize_DiffAreaSizeZero")
      end
      local l_0_13, l_0_14 = nil, nil
      if l_0_12 == 8 then
        l_0_13 = (mp.readu_u32)(headerpage, 41)
        l_0_14 = (mp.readu_u32)(headerpage, 49)
        if l_0_13 == l_0_14 then
          (mp.set_mpattribute)("VSSAMSI_Resize_SameVolume")
        else
          ;
          (mp.set_mpattribute)("VSSAMSI_Resize_DifferentVolume")
        end
      else
        ;
        (mp.set_mpattribute)("VSSAMSI_Resize_NotNormalToFromVolume")
      end
    end
    do
      return mp.CLEAN
    end
  end
end

