-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\129b3d9692489\0x00000335_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  do
    if (this_sigattrlog[1]).utf8p1 ~= nil then
      local l_0_0, l_0_1 = nil, nil
    end
    do
      if (this_sigattrlog[1]).utf8p2 ~= nil then
        local l_0_2 = nil
      end
      -- DECOMPILER ERROR at PC42: Overwrote pending register: R1 in 'AssignReg'

      -- DECOMPILER ERROR at PC56: Overwrote pending register: R0 in 'AssignReg'

      -- DECOMPILER ERROR at PC57: Unhandled construct in 'MakeBoolean' P1

      if (this_sigattrlog[2]).matched and ((this_sigattrlog[2]).utf8p1 == nil or (this_sigattrlog[2]).utf8p2 ~= nil) then
        if (this_sigattrlog[3]).matched then
          do
            if (this_sigattrlog[3]).utf8p1 ~= nil then
              local l_0_3, l_0_4, l_0_6, l_0_7, l_0_8, l_0_9, l_0_11, l_0_13, l_0_15, l_0_17, l_0_19, l_0_21, l_0_23, l_0_25 = (this_sigattrlog[2]).utf8p1, (this_sigattrlog[1]).utf8p2
            end
            do
              if (this_sigattrlog[3]).utf8p2 ~= nil then
                local l_0_5, l_0_10, l_0_12, l_0_14, l_0_16, l_0_18, l_0_20, l_0_22, l_0_24, l_0_26 = , (this_sigattrlog[3]).utf8p2
              end
              -- DECOMPILER ERROR at PC91: Confused about usage of register: R0 in 'UnsetPending'

              -- DECOMPILER ERROR at PC97: Confused about usage of register: R0 in 'UnsetPending'

              if (not (this_sigattrlog[4]).matched or (((this_sigattrlog[4]).utf8p1 == nil or (this_sigattrlog[4]).utf8p2 ~= nil) and (this_sigattrlog[4]).utf8p1 == nil) or (sysio.IsFileExists)((this_sigattrlog[4]).utf8p1)) then
                (bm.add_related_file)((this_sigattrlog[4]).utf8p1)
              end
              -- DECOMPILER ERROR at PC103: Confused about usage of register: R1 in 'UnsetPending'

              -- DECOMPILER ERROR at PC109: Confused about usage of register: R1 in 'UnsetPending'

              if (this_sigattrlog[4]).utf8p2 ~= nil and (sysio.IsFileExists)((this_sigattrlog[4]).utf8p2) then
                (bm.add_related_file)((this_sigattrlog[4]).utf8p2)
                -- DECOMPILER ERROR at PC115: Confused about usage of register: R1 in 'UnsetPending'

                ;
                (MpCommon.AppendPersistContext)((string.lower)((this_sigattrlog[4]).utf8p2), "MasqSuspRenameTarget", 3600)
                local l_0_27 = nil
                -- DECOMPILER ERROR at PC126: Confused about usage of register: R1 in 'UnsetPending'

                TrackFileAndTechnique((this_sigattrlog[4]).utf8p2, {"T1036.003:masquerading_target", "T1036.003:defenseevasion_target", "T1036.003:MasqSuspRename.F"})
              end
              do
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
end

