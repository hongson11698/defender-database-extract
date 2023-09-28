-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2d8b3f297d6ec\0x000082bc_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
local l_0_2 = {}
local l_0_3 = {}
local l_0_4 = {}
local l_0_5 = {}
local l_0_6 = {}
local l_0_7 = 0
local l_0_8 = (bm.get_sig_count)()
for l_0_12 = 1, l_0_0 do
  local l_0_13 = (sigattr_tail[l_0_12]).attribute
  if l_0_13 == 16384 then
    local l_0_14 = ((sigattr_tail[l_0_12]).utf8p1):lower()
    local l_0_15 = l_0_14:match("%.[^%.]+$")
    if l_0_15 ~= nil and (mp.GetExtensionClass)(l_0_15) ~= 4 then
      local l_0_16 = (mp.crc32)(0, l_0_14, 1, #l_0_14)
      if l_0_1[l_0_16] ~= nil then
        (table.insert)(l_0_1[l_0_16], l_0_12)
      else
        local l_0_17 = {}
        -- DECOMPILER ERROR at PC55: No list found for R17 , SetList fails

      end
    end
  end
end
if l_0_7 < 5 then
  return mp.CLEAN
end
for l_0_21 = 1, l_0_0 do
  local l_0_22 = (sigattr_tail[l_0_21]).attribute
  if l_0_22 == 16389 and (sigattr_tail[l_0_21]).utf8p2 == "ATTR_c09458eb" then
    local l_0_23 = ((sigattr_tail[l_0_21]).utf8p1):lower()
    -- DECOMPILER ERROR at PC87: Overwrote pending register: R18 in 'AssignReg'

    local l_0_24 = (mp.crc32)(0, l_0_23, l_0_12, #l_0_23)
    if l_0_3[l_0_24] ~= nil then
      (table.insert)(l_0_3[l_0_24], l_0_21)
    else
      local l_0_25 = {}
      -- DECOMPILER ERROR at PC101: No list found for R16 , SetList fails

    end
    do
      -- DECOMPILER ERROR at PC108: Overwrote pending register: R17 in 'AssignReg'

      do
        if not (string.find)(l_0_21, "\\[^\\]*$") then
          local l_0_26, l_0_27, l_0_28 = l_0_1[l_0_24] == nil or 0
        end
        -- DECOMPILER ERROR at PC118: Confused about usage of register: R16 in 'UnsetPending'

        local l_0_29 = nil
        if (string.find)(l_0_23, ".", l_0_26, true) ~= nil then
          local l_0_30 = nil
          if (string.sub)(l_0_23, l_0_29 + 1, (string.find)(l_0_23, ".", l_0_26, true) - 1) ~= nil then
            if l_0_4[(string.sub)(l_0_23, l_0_29 + 1, (string.find)(l_0_23, ".", l_0_26, true) - 1)] == nil then
              local l_0_31 = nil
              l_0_4[l_0_31] = {l_0_24, l_0_21}
            else
              do
                do
                  -- DECOMPILER ERROR at PC142: Confused about usage of register: R18 in 'UnsetPending'

                  ;
                  (table.insert)(l_0_4[l_0_31], l_0_21)
                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
      end
    end
  end
end
-- DECOMPILER ERROR at PC146: Overwrote pending register: R7 in 'AssignReg'

local l_0_32 = {}
for l_0_36 = 1, l_0_0 do
  local l_0_37 = (sigattr_tail[l_0_36]).attribute
  if l_0_37 == 16387 then
    local l_0_38 = ((sigattr_tail[l_0_36]).utf8p1):lower()
    local l_0_39 = (mp.crc32)(0, l_0_38, 1, #l_0_38)
    if l_0_1[l_0_39] == nil then
      (table.insert)(l_0_2, l_0_36)
    else
      l_0_3[l_0_39] = nil
    end
    -- DECOMPILER ERROR at PC182: Overwrote pending register: R7 in 'AssignReg'

    if l_0_32[l_0_39] == nil then
      l_0_32[l_0_39] = 1
    end
  end
end
if l_0_7 < 5 then
  return mp.CLEAN
end
for l_0_43,l_0_44 in pairs(l_0_2) do
  local l_0_45 = ((sigattr_tail[l_0_44]).utf8p1):lower()
  do
    local l_0_46, l_0_47, l_0_48, l_0_49 = (string.find)(l_0_45, "\\[^\\]*$") or 0
    -- DECOMPILER ERROR at PC211: Confused about usage of register: R16 in 'UnsetPending'

    local l_0_50 = nil
    if (string.find)(l_0_45, ".", l_0_46, true) ~= nil then
      local l_0_51 = nil
      local l_0_52 = (string.sub)(l_0_45, l_0_50 + 1, -1)
      local l_0_53 = ((string.sub)(l_0_45, l_0_50 + 1, l_0_51 - 1))
      -- DECOMPILER ERROR at PC234: Overwrote pending register: R20 in 'AssignReg'

      -- DECOMPILER ERROR at PC243: Confused about usage of register: R20 in 'UnsetPending'

      if (l_0_52 == nil or l_0_53 ~= nil) and nil ~= nil and (mp.bitand)((mp.GetExtensionClass)(nil), 3) ~= 0 and l_0_4[l_0_53] ~= nil then
        local l_0_54 = nil
        -- DECOMPILER ERROR at PC258: Confused about usage of register: R21 in 'UnsetPending'

        if l_0_3[(l_0_4[l_0_53])[1]] ~= nil then
          local l_0_55 = nil
          if #l_0_45 < #((sigattr_tail[(l_0_3[(l_0_4[l_0_53])[1]])[1]]).utf8p1):lower() and (((sigattr_tail[(l_0_3[(l_0_4[l_0_53])[1]])[1]]).utf8p1):lower()):find(l_0_45, 1, true) == 1 and (((sigattr_tail[(l_0_3[(l_0_4[l_0_53])[1]])[1]]).utf8p1):lower()):byte(#l_0_45 + 1) ~= 58 then
            local l_0_56 = nil
            -- DECOMPILER ERROR at PC293: Unhandled construct in 'MakeBoolean' P1

            if l_0_5[(string.sub)(((sigattr_tail[(l_0_3[(l_0_4[l_0_53])[1]])[1]]).utf8p1):lower(), #l_0_45 + 1)] ~= nil and l_0_6[l_0_55] == nil then
              l_0_6[l_0_55] = 1
              ;
              (table.insert)(l_0_5[(string.sub)(((sigattr_tail[(l_0_3[(l_0_4[l_0_53])[1]])[1]]).utf8p1):lower(), #l_0_45 + 1)], (l_0_3[l_0_55])[1])
              ;
              (table.insert)(l_0_5[(string.sub)(((sigattr_tail[(l_0_3[(l_0_4[l_0_53])[1]])[1]]).utf8p1):lower(), #l_0_45 + 1)], l_0_44)
              if #l_0_5[(string.sub)(((sigattr_tail[(l_0_3[(l_0_4[l_0_53])[1]])[1]]).utf8p1):lower(), #l_0_45 + 1)] >= 10 then
                local l_0_57 = nil
                for l_0_61,l_0_62 in pairs(l_0_5[l_0_57]) do
                  local l_0_58 = {count = 0}
                  -- DECOMPILER ERROR at PC318: Confused about usage of register: R29 in 'UnsetPending'

                  if (sysio.ReadFile)((sigattr_tail[R29_PC318]).utf8p1, 0, 4) ~= nil and l_0_58[(sysio.ReadFile)((sigattr_tail[R29_PC318]).utf8p1, 0, 4)] == nil then
                    l_0_58[(sysio.ReadFile)((sigattr_tail[R29_PC318]).utf8p1, 0, 4)] = 1
                    l_0_58.count = l_0_58.count + 1
                  end
                end
                -- DECOMPILER ERROR at PC334: Confused about usage of register: R24 in 'UnsetPending'

                if l_0_58.count > 4 then
                  (bm.add_related_string)("magic_mismatch", "true", bm.RelatedStringBMReport)
                else
                  ;
                  (bm.add_related_string)("magic_mismatch", "false", bm.RelatedStringBMReport)
                end
                ;
                (bm.add_related_string)("ransom_extension", l_0_57, bm.RelatedStringBMReport)
                local l_0_64 = nil
                local l_0_65 = {}
                local l_0_66 = {}
                -- DECOMPILER ERROR at PC373: Overwrote pending register: R28 in 'AssignReg'

                if (bm.get_current_process_startup_info)() ~= nil then
                  do
                    local l_0_67 = ((bm.get_imagepath)()):lower()
                    -- DECOMPILER ERROR at PC374: Confused about usage of register: R27 in 'UnsetPending'

                    l_0_65.proc_info = ((bm.get_current_process_startup_info)()).ppid
                    l_0_65.appended_ext = l_0_57
                    local l_0_68 = nil
                    for l_0_72,l_0_73 in pairs(l_0_5[l_0_57]) do
                      local l_0_69, l_0_70 = , "FileChain_MainSet:"
                      -- DECOMPILER ERROR at PC383: Confused about usage of register: R34 in 'UnsetPending'

                      do
                        local l_0_76, l_0_77 = , (string.find)((sigattr_tail[R34_PC383]).utf8p1, "\\[^\\]*$") or 0
                        -- DECOMPILER ERROR at PC395: Confused about usage of register: R35 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC397: Confused about usage of register: R36 in 'UnsetPending'

                        local l_0_78 = nil
                        -- DECOMPILER ERROR at PC404: Confused about usage of register: R35 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC405: Confused about usage of register: R36 in 'UnsetPending'

                        do
                          do
                            if (string.find)(l_0_76, ".", l_0_77, true) ~= nil then
                              local l_0_79 = nil
                              l_0_70 = l_0_70 .. (crypto.CRC32Buffer)(-1, (string.sub)(l_0_76, l_0_77 + 1, (string.find)(l_0_76, ".", l_0_77, true) - 1), 0, #(string.sub)(l_0_76, l_0_77 + 1, (string.find)(l_0_76, ".", l_0_77, true) - 1))
                              l_0_70 = l_0_70 .. ";" .. (string.sub)(l_0_79, (string.find)(l_0_76, ".", l_0_77, true) + 1) .. ";"
                            end
                            ;
                            (table.insert)(l_0_66, (sigattr_tail[l_0_78]).utf8p1)
                            -- DECOMPILER ERROR at PC433: LeaveBlock: unexpected jumping out DO_STMT

                            -- DECOMPILER ERROR at PC433: LeaveBlock: unexpected jumping out DO_STMT

                          end
                        end
                      end
                    end
                    l_0_65.file_list = l_0_66
                    local l_0_80, l_0_81 = nil
                    for l_0_85,l_0_86 in ipairs((bm.get_process_relationships)()) do
                      local l_0_82, l_0_83 = nil
                      -- DECOMPILER ERROR at PC443: Confused about usage of register: R36 in 'UnsetPending'

                      -- DECOMPILER ERROR at PC448: Confused about usage of register: R36 in 'UnsetPending'

                      if l_0_77.image_path ~= nil then
                        (bm.add_related_process)(l_0_77.ppid)
                      end
                    end
                    -- DECOMPILER ERROR at PC453: Confused about usage of register: R31 in 'UnsetPending'

                    for l_0_90,l_0_91 in ipairs(l_0_83) do
                      local l_0_87, l_0_88 = nil
                      -- DECOMPILER ERROR at PC456: Confused about usage of register: R36 in 'UnsetPending'

                      -- DECOMPILER ERROR at PC461: Confused about usage of register: R36 in 'UnsetPending'

                      if l_0_77.image_path ~= nil then
                        (bm.add_related_process)(l_0_77.ppid)
                        -- DECOMPILER ERROR at PC464: Confused about usage of register: R36 in 'UnsetPending'

                        TrackPidAndTechniqueBM(l_0_77.ppid, "T1485", "susp_ransomware_childproc_type4")
                      end
                    end
                    ;
                    (bm.add_related_string)("ransom_files_main", l_0_81, bm.RelatedStringBMReport)
                    do
                      local l_0_92 = nil
                      ;
                      (bm.add_related_string)("gend_ransom_meta", safeJsonSerialize(l_0_65), bm.RelatedStringBMReport)
                      ;
                      (bm.trigger_sig)("GenericRansomware:Type4", safeJsonSerialize(l_0_65))
                      sms_untrusted_process()
                      ;
                      (bm.add_action)("SmsAsyncScanEvent", 100)
                      TrackPidAndTechniqueBM(l_0_80, "T1486", "susp_ransomware_type4")
                      reportTimingData()
                      ;
                      (bm.add_related_string)("sigcount_type4", l_0_8, bm.RelatedStringBMReport)
                      reportSessionInformationInclusive()
                      do return mp.INFECTED end
                      do
                        local l_0_93 = nil
                        l_0_5[l_0_93] = {(l_0_3[l_0_55])[1], l_0_44}
                        l_0_6[l_0_55] = 1
                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC526: LeaveBlock: unexpected jumping out DO_STMT

                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
return mp.CLEAN

