-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000774_luac 

-- params : ...
-- function num : 0
local l_0_6, l_0_11, l_0_25, l_0_30, l_0_48, l_0_53, l_0_59, l_0_63, l_0_67, l_0_71, l_0_75, l_0_79, l_0_83, l_0_87 = nil, nil, nil, nil
if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_1, l_0_2, l_0_3, l_0_8, l_0_14, l_0_16, l_0_18, l_0_20, l_0_22, l_0_27, l_0_33, l_0_36, l_0_39, l_0_42, l_0_45, l_0_50, l_0_56, l_0_60, l_0_64, l_0_68, l_0_72, l_0_76, l_0_80, l_0_84 = (string.lower)((this_sigattrlog[1]).utf8p1)
else
  do
    if (this_sigattrlog[2]).matched then
      local l_0_4, l_0_9, l_0_15, l_0_17, l_0_19, l_0_21, l_0_23, l_0_28, l_0_34, l_0_37, l_0_40, l_0_43, l_0_46, l_0_51, l_0_57, l_0_61, l_0_65, l_0_69, l_0_73, l_0_77, l_0_81, l_0_85 = , (string.lower)((this_sigattrlog[2]).utf8p1)
    else
      do
        do
          if (this_sigattrlog[3]).matched then
            local l_0_5, l_0_10, l_0_24, l_0_29, l_0_35, l_0_38, l_0_41, l_0_44, l_0_47, l_0_52, l_0_58, l_0_62, l_0_66, l_0_70, l_0_74, l_0_78, l_0_82, l_0_86 = , (string.lower)((this_sigattrlog[3]).utf8p1)
          end
          -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

          -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

          -- DECOMPILER ERROR at PC48: Confused about usage of register: R0 in 'UnsetPending'

          -- DECOMPILER ERROR at PC58: Confused about usage of register: R0 in 'UnsetPending'

          do
            if l_0_5 ~= nil and (sysio.IsFileExists)(l_0_5) and ((sysio.GetFileSize)(l_0_5) <= 8192 or not 8192) then
              local l_0_13 = nil
            end
            -- DECOMPILER ERROR at PC70: Confused about usage of register: R1 in 'UnsetPending'

            -- DECOMPILER ERROR at PC74: Confused about usage of register: R1 in 'UnsetPending'

            -- DECOMPILER ERROR at PC80: Confused about usage of register: R1 in 'UnsetPending'

            -- DECOMPILER ERROR at PC90: Confused about usage of register: R1 in 'UnsetPending'

            do
              if l_0_10 ~= nil and (sysio.IsFileExists)(l_0_10) and ((sysio.GetFileSize)(l_0_10) <= 8192 or not 8192) then
                local l_0_32 = nil
                -- DECOMPILER ERROR at PC100: Overwrote pending register: R3 in 'AssignReg'

              end
              -- DECOMPILER ERROR at PC102: Confused about usage of register: R2 in 'UnsetPending'

              -- DECOMPILER ERROR at PC106: Confused about usage of register: R2 in 'UnsetPending'

              -- DECOMPILER ERROR at PC112: Confused about usage of register: R2 in 'UnsetPending'

              -- DECOMPILER ERROR at PC122: Confused about usage of register: R2 in 'UnsetPending'

              do
                if l_0_24 ~= nil and (sysio.IsFileExists)(l_0_24) and ((sysio.GetFileSize)(l_0_24) <= 12288 or not 12288) then
                  local l_0_55 = nil
                  -- DECOMPILER ERROR at PC132: Overwrote pending register: R3 in 'AssignReg'

                end
                -- DECOMPILER ERROR at PC144: Confused about usage of register: R3 in 'UnsetPending'

                -- DECOMPILER ERROR at PC150: Confused about usage of register: R3 in 'UnsetPending'

                if (string.gsub)((string.match)(tostring((sysio.ReadFile)(l_0_5, 0, (sysio.GetFileSize)(l_0_5))), "#ExternalChecksum%(\"([^\"]+)"), "\\\\", "\\") and (sysio.IsFileExists)((string.gsub)((string.match)(tostring((sysio.ReadFile)(l_0_5, 0, (sysio.GetFileSize)(l_0_5))), "#ExternalChecksum%(\"([^\"]+)"), "\\\\", "\\")) then
                  (mp.ReportLowfi)((string.gsub)((string.match)(tostring((sysio.ReadFile)(l_0_5, 0, (sysio.GetFileSize)(l_0_5))), "#ExternalChecksum%(\"([^\"]+)"), "\\\\", "\\"), 3343198717)
                  -- DECOMPILER ERROR at PC155: Confused about usage of register: R3 in 'UnsetPending'

                  ;
                  (bm.add_related_file)((string.gsub)((string.match)(tostring((sysio.ReadFile)(l_0_5, 0, (sysio.GetFileSize)(l_0_5))), "#ExternalChecksum%(\"([^\"]+)"), "\\\\", "\\"))
                  -- DECOMPILER ERROR at PC160: Confused about usage of register: R3 in 'UnsetPending'

                  ;
                  (bm.add_related_string)("WebshellPath", (string.gsub)((string.match)(tostring((sysio.ReadFile)(l_0_5, 0, (sysio.GetFileSize)(l_0_5))), "#ExternalChecksum%(\"([^\"]+)"), "\\\\", "\\"), bm.RelatedStringBMReport)
                  return mp.INFECTED
                end
                return mp.CLEAN
              end
            end
          end
        end
      end
    end
  end
end

