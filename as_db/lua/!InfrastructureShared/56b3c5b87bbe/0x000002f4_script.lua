-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\56b3c5b87bbe\0x000002f4_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  do
    if (this_sigattrlog[1]).utf8p1 ~= nil then
      local l_0_0, l_0_1, l_0_2, l_0_4, l_0_6, l_0_8, l_0_10, l_0_12, l_0_14, l_0_16, l_0_18 = nil, nil
    end
    do
      if (this_sigattrlog[1]).utf8p2 ~= nil then
        local l_0_3, l_0_5, l_0_7, l_0_9, l_0_11, l_0_13, l_0_15, l_0_17, l_0_19 = , (this_sigattrlog[1]).utf8p2
      end
      -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

      if l_0_3 ~= nil and (sysio.IsFileExists)(l_0_3) then
        (bm.add_related_file)(l_0_3)
      end
      -- DECOMPILER ERROR at PC33: Confused about usage of register: R1 in 'UnsetPending'

      -- DECOMPILER ERROR at PC37: Confused about usage of register: R1 in 'UnsetPending'

      -- DECOMPILER ERROR at PC43: Confused about usage of register: R1 in 'UnsetPending'

      if l_0_5 ~= nil and (sysio.IsFileExists)(l_0_5) then
        (bm.add_related_file)(l_0_5)
        -- DECOMPILER ERROR at PC49: Confused about usage of register: R1 in 'UnsetPending'

        ;
        (MpCommon.AppendPersistContext)((string.lower)(l_0_5), "MasqSuspRenameTarget", 3600)
        local l_0_20 = nil
        -- DECOMPILER ERROR at PC60: Confused about usage of register: R1 in 'UnsetPending'

        TrackFileAndTechnique(l_0_5, {"T1036.003:masquerading_target", "T1036.003:defenseevasion_target", "T1036.003:MasqSuspRename.C"})
      end
      do
        return mp.INFECTED
      end
    end
  end
end

