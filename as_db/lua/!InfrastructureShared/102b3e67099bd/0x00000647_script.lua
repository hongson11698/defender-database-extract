-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\102b3e67099bd\0x00000647_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 then
    local l_0_2 = nil
    if (MpCommon.GetMountedFileBackingFilePath)(l_0_0) == nil then
      return mp.CLEAN
    end
    local l_0_3 = nil
    if (string.lower)((string.sub)((MpCommon.GetMountedFileBackingFilePath)(l_0_0), -4)) ~= ".iso" or (string.lower)((string.sub)((MpCommon.GetMountedFileBackingFilePath)(l_0_0), -4)) ~= ".img" then
      return mp.CLEAN
    end
    triggerMemoryScanOnProcessTree(true, true, "SMS_M", 1000, "Behavior:Win32/Qakbot.SC")
    ;
    (bm.add_related_file)(l_0_2)
    ;
    (bm.add_related_file)(l_0_3)
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

