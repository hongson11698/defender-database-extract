-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3b5b300372810\0x00000395_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
for l_0_5 = 1, l_0_0 do
  if (sigattr_tail[l_0_5]).attribute == 16384 then
    local l_0_6 = ((sigattr_tail[l_0_5]).utf8p1):lower()
    l_0_1[(mp.crc32)(0, l_0_6, 1, #l_0_6)] = 1
  end
end
local l_0_7 = {}
do
  local l_0_8 = {}
  for l_0_12 = 1, l_0_0 do
    if (sigattr_tail[l_0_12]).attribute == 16386 then
      local l_0_13 = ((sigattr_tail[l_0_12]).utf8p2):lower()
      local l_0_14 = ((sigattr_tail[l_0_12]).utf8p1):lower()
      local l_0_15 = (mp.crc32)(0, l_0_13, 1, #l_0_13)
      local l_0_16 = (mp.crc32)(0, l_0_14, 1, #l_0_14)
      if l_0_1[l_0_15] ~= nil and l_0_8[l_0_16] == nil then
        local l_0_17 = l_0_14:match("%.[^%.]+$")
        if l_0_17 ~= nil then
          local l_0_18 = (mp.GetExtensionClass)(l_0_17)
          if (l_0_18 == 2 or l_0_18 == 3 or l_0_17 == ".pdf") and #l_0_14 < #l_0_13 and l_0_13:find(l_0_14, 1, true) == 1 and l_0_13:byte(#l_0_14 + 1) ~= 58 then
            l_0_8[l_0_16] = 1
            local l_0_19 = l_0_13:match("%.[^%.]+$")
            if (mp.GetExtensionClass)(l_0_19) ~= 4 then
              local l_0_20 = (string.sub)(l_0_13, #l_0_14 + 1)
              if l_0_7[l_0_20] ~= nil then
                (table.insert)(l_0_7[l_0_20], l_0_12)
                if #l_0_7[l_0_20] >= 5 then
                  local l_0_21 = {}
                  l_0_21.count = 0
                  for l_0_25,l_0_26 in pairs(l_0_7[l_0_20]) do
                    local l_0_27 = (sysio.ReadFile)((sigattr_tail[l_0_26]).utf8p1, 0, 4)
                    if l_0_27 ~= nil and l_0_21[l_0_27] == nil then
                      l_0_21[l_0_27] = 1
                      l_0_21.count = l_0_21.count + 1
                    end
                  end
                  if l_0_21.count > 4 then
                    (bm.add_related_string)("magic_mismatch", "true", bm.RelatedStringBMReport)
                  else
                    ;
                    (bm.add_related_string)("magic_mismatch", "false", bm.RelatedStringBMReport)
                  end
                  ;
                  (bm.add_related_string)("ransom_extension", l_0_20, bm.RelatedStringBMReport)
                  local l_0_28 = {}
                  local l_0_29 = ((bm.get_imagepath)()):lower()
                  -- DECOMPILER ERROR at PC190: Overwrote pending register: R19 in 'AssignReg'

                  if (bm.get_current_process_startup_info)() ~= nil then
                    do
                      local l_0_30, l_0_31, l_0_32, l_0_33, l_0_34 = ((bm.get_current_process_startup_info)()).ppid
                      ;
                      (table.insert)(l_0_28, l_0_29)
                      -- DECOMPILER ERROR at PC199: Confused about usage of register: R19 in 'UnsetPending'

                      ;
                      (table.insert)(l_0_28, l_0_30)
                      ;
                      (table.insert)(l_0_28, l_0_20)
                      local l_0_35 = nil
                      for l_0_39,l_0_40 in pairs(l_0_7[l_0_20]) do
                        local l_0_36 = "FileChain_MainSet:"
                        -- DECOMPILER ERROR at PC212: Confused about usage of register: R25 in 'UnsetPending'

                        do
                          local l_0_42, l_0_43, l_0_44 = , (string.find)((sigattr_tail[4]).utf8p1, "\\[^\\]*$") or 0
                          -- DECOMPILER ERROR at PC224: Confused about usage of register: R26 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC226: Confused about usage of register: R27 in 'UnsetPending'

                          local l_0_45 = nil
                          -- DECOMPILER ERROR at PC234: Confused about usage of register: R27 in 'UnsetPending'

                          do
                            if (string.find)(l_0_42, ".", l_0_43, true) ~= nil then
                              local l_0_46 = nil
                              l_0_36 = l_0_36 .. (crypto.CRC32Buffer)(-1, (string.sub)(l_0_45, l_0_43 + 1, (string.find)(l_0_42, ".", l_0_43, true) - 1), 0, #(string.sub)(l_0_45, l_0_43 + 1, (string.find)(l_0_42, ".", l_0_43, true) - 1))
                              l_0_36 = l_0_36 .. ";" .. (string.sub)(l_0_45, (string.find)(l_0_42, ".", l_0_43, true) + 1) .. ";"
                            end
                            l_0_45 = (sigattr_tail[l_0_41]).utf8p2
                            -- DECOMPILER ERROR at PC279: Confused about usage of register: R27 in 'UnsetPending'

                            -- DECOMPILER ERROR at PC280: Confused about usage of register: R28 in 'UnsetPending'

                            do
                              do
                                if (string.find)(l_0_45, ".", (string.find)(l_0_45, "\\[^\\]*$") or 0, true) ~= nil then
                                  local l_0_47 = nil
                                  l_0_36 = l_0_36 .. (crypto.CRC32Buffer)(-1, (string.sub)(l_0_45, ((string.find)(l_0_45, "\\[^\\]*$") or 0) + 1, (string.find)(l_0_45, ".", (string.find)(l_0_45, "\\[^\\]*$") or 0, true) - 1), 0, #(string.sub)(l_0_45, ((string.find)(l_0_45, "\\[^\\]*$") or 0) + 1, (string.find)(l_0_45, ".", (string.find)(l_0_45, "\\[^\\]*$") or 0, true) - 1))
                                  -- DECOMPILER ERROR at PC296: Confused about usage of register: R28 in 'UnsetPending'

                                  l_0_36 = l_0_36 .. ";" .. (string.sub)(l_0_45, (string.find)(l_0_45, ".", (string.find)(l_0_45, "\\[^\\]*$") or 0, true) + 1) .. ";"
                                end
                                ;
                                (table.insert)(l_0_28, (sigattr_tail[l_0_41]).utf8p1)
                                ;
                                (table.insert)(l_0_28, (sigattr_tail[l_0_41]).utf8p2)
                                -- DECOMPILER ERROR at PC314: LeaveBlock: unexpected jumping out DO_STMT

                                -- DECOMPILER ERROR at PC314: LeaveBlock: unexpected jumping out DO_STMT

                                -- DECOMPILER ERROR at PC314: LeaveBlock: unexpected jumping out DO_STMT

                              end
                            end
                          end
                        end
                      end
                      local l_0_48, l_0_49 = , (bm.get_process_relationships)()
                      for l_0_53,l_0_54 in ipairs(l_0_49) do
                        local l_0_50 = nil
                        -- DECOMPILER ERROR at PC323: Confused about usage of register: R27 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC328: Confused about usage of register: R27 in 'UnsetPending'

                        if l_0_47.image_path ~= nil then
                          (bm.add_related_process)(l_0_47.ppid)
                        end
                      end
                      -- DECOMPILER ERROR at PC333: Confused about usage of register: R22 in 'UnsetPending'

                      for l_0_58,l_0_59 in ipairs(l_0_50) do
                        local l_0_55 = nil
                        -- DECOMPILER ERROR at PC336: Confused about usage of register: R27 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC341: Confused about usage of register: R27 in 'UnsetPending'

                        if l_0_47.image_path ~= nil then
                          (bm.add_related_process)(l_0_47.ppid)
                          -- DECOMPILER ERROR at PC344: Confused about usage of register: R27 in 'UnsetPending'

                          TrackPidAndTechniqueBM(l_0_47.ppid, "T1485", "susp_ransmware_childproc_type2")
                        end
                      end
                      ;
                      (bm.add_related_string)("ransom_files_main", l_0_48, bm.RelatedStringBMReport)
                      do
                        local l_0_60 = nil
                        ;
                        (bm.add_related_string)("genb2_ransom_meta", safeJsonSerialize(l_0_28), bm.RelatedStringBMReport)
                        ;
                        (bm.trigger_sig)("GenericRansomware:Type2.2", safeJsonSerialize(l_0_28))
                        sms_untrusted_process()
                        ;
                        (bm.add_action)("SmsAsyncScanEvent", 100)
                        TrackPidAndTechniqueBM(l_0_35, "T1486", "susp_ransomware_type2")
                        reportTimingData()
                        do return mp.INFECTED end
                        do
                          local l_0_61 = {}
                          -- DECOMPILER ERROR at PC392: No list found for R16 , SetList fails

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out DO_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out DO_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC394: LeaveBlock: unexpected jumping out IF_STMT

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
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

