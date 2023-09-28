-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\38db3e966e175\0x000082c8_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
local l_0_2 = (bm.get_sig_count)()
for l_0_6 = 1, l_0_0 do
  if (sigattr_tail[l_0_6]).attribute == 16385 then
    local l_0_7 = ((sigattr_tail[l_0_6]).utf8p1):lower()
    l_0_1[(mp.crc32)(0, l_0_7, 1, #l_0_7)] = l_0_6
  end
end
local l_0_8 = {}
local l_0_9 = {}
local l_0_10 = {}
local l_0_11 = {}
local l_0_12 = {}
local l_0_13, l_0_14, l_0_15, l_0_16 = nil, nil, nil, nil
local l_0_17 = ""
do
  local l_0_18 = false
  for l_0_22 = 1, l_0_0 do
    if (sigattr_tail[l_0_22]).attribute == 16386 then
      local l_0_23 = ((sigattr_tail[l_0_22]).utf8p2):lower()
      local l_0_24 = ((sigattr_tail[l_0_22]).utf8p1):lower()
      local l_0_25 = (mp.crc32)(0, l_0_23, 1, #l_0_23)
      local l_0_26 = (mp.crc32)(0, l_0_24, 1, #l_0_24)
      if (l_0_1[l_0_26] ~= nil or l_0_1[l_0_25] ~= nil) and l_0_9[l_0_25] == nil then
        local l_0_27 = l_0_23:match("%.[^%.]+$")
        if l_0_27 ~= nil and (mp.bitand)((mp.GetExtensionClass)(l_0_27), 3) ~= 0 and #l_0_23 < #l_0_24 and l_0_24:find(l_0_23, 1, true) == 1 and l_0_24:byte(#l_0_23 + 1) ~= 58 then
          l_0_9[l_0_25] = 1
          local l_0_28 = l_0_24:match("%.[^%.]+$")
          if (mp.GetExtensionClass)(l_0_28) ~= 4 then
            if l_0_1[l_0_26] ~= nil then
              l_0_10[l_0_22] = l_0_1[l_0_26]
            else
              if l_0_1[l_0_25] ~= nil then
                l_0_10[l_0_22] = l_0_1[l_0_25]
              end
            end
            local l_0_29 = (string.sub)(l_0_24, #l_0_23 + 1)
            if l_0_8[l_0_29] ~= nil then
              (table.insert)(l_0_8[l_0_29], l_0_22)
              if #l_0_8[l_0_29] >= 5 then
                local l_0_30 = {}
                l_0_30.count = 0
                for l_0_34,l_0_35 in pairs(l_0_8[l_0_29]) do
                  local l_0_36 = (sysio.GetFileSize)((sigattr_tail[l_0_35]).utf8p1)
                  local l_0_37 = (sysio.ReadFile)((sigattr_tail[l_0_35]).utf8p1, 0, 4)
                  if l_0_37 ~= nil and l_0_30[l_0_37] == nil then
                    l_0_30[l_0_37] = 1
                    l_0_30.count = l_0_30.count + 1
                  end
                  if l_0_10[l_0_35] ~= nil and l_0_18 == false then
                    local l_0_38 = (sigattr_tail[l_0_10[l_0_35]]).utf8p2
                    if #l_0_38 > 136 then
                      local l_0_39 = (string.find)(l_0_38, "RemoteIp", 100, true)
                      if l_0_39 ~= nil and #l_0_38 - l_0_39 > 20 then
                        local l_0_40 = {}
                        for l_0_44,l_0_45 in (string.gmatch)(l_0_38, "(%w+):([^;]+)") do
                          l_0_40[l_0_44] = l_0_45
                        end
                        if l_0_40.UsrName ~= nil and l_0_40.Domain ~= nil and l_0_40.RemoteIp ~= nil then
                          l_0_13 = l_0_40.UsrName
                          l_0_14 = l_0_40.Domain
                          l_0_15 = scrubData(l_0_40.UsrName)
                          l_0_16 = scrubData(l_0_40.Domain)
                          local l_0_46 = (string.match)(l_0_40.RemoteIp, "(.*):(.*)")
                          if l_0_46 ~= nil and (l_0_17 == "" or l_0_17 == l_0_46) then
                            local l_0_47 = table.insert
                            local l_0_48 = l_0_12
                            local l_0_49 = {}
                            l_0_49.path = (sigattr_tail[l_0_35]).utf8p1
                            l_0_49.magic = l_0_37
                            l_0_49.fileSize = l_0_36
                            l_0_47(l_0_48, l_0_49)
                            l_0_17 = l_0_46
                          else
                            do
                              do
                                l_0_18 = true
                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out DO_STMT

                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out IF_STMT

                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out IF_STMT

                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out IF_STMT

                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out IF_STMT

                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                -- DECOMPILER ERROR at PC258: LeaveBlock: unexpected jumping out IF_STMT

                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
                if l_0_30.count > 4 then
                  (bm.add_related_string)("magic_mismatch", "true", bm.RelatedStringBMReport)
                else
                  ;
                  (bm.add_related_string)("magic_mismatch", "false", bm.RelatedStringBMReport)
                end
                ;
                (bm.add_related_string)("ransom_extension", l_0_29, bm.RelatedStringBMReport)
                local l_0_50 = {}
                local l_0_51 = {}
                local l_0_52 = ((bm.get_imagepath)()):lower()
                local l_0_53 = (bm.get_current_process_startup_info)()
                local l_0_54 = ""
                if l_0_53 ~= nil then
                  l_0_54 = l_0_53.command_line
                  l_0_53 = l_0_53.ppid
                else
                  l_0_53 = -1
                end
                l_0_50.cur_image_path = l_0_52
                l_0_50.proc_info = l_0_53
                l_0_50.appended_ext = l_0_29
                local l_0_55 = "FileChain_MainSet:"
                for l_0_59,l_0_60 in pairs(l_0_8[l_0_29]) do
                  local l_0_61 = (sigattr_tail[l_0_60]).utf8p1
                  do
                    local l_0_62, l_0_63, l_0_64 = (string.find)(l_0_61, "\\[^\\]*$") or 0
                    -- DECOMPILER ERROR at PC325: Confused about usage of register: R38 in 'UnsetPending'

                    local l_0_65 = nil
                    do
                      if (string.find)(l_0_61, ".", l_0_62, true) ~= nil then
                        local l_0_66 = nil
                        l_0_55 = l_0_55 .. (crypto.CRC32Buffer)(-1, (string.sub)(l_0_61, l_0_65 + 1, (string.find)(l_0_61, ".", l_0_62, true) - 1), 0, #(string.sub)(l_0_61, l_0_65 + 1, (string.find)(l_0_61, ".", l_0_62, true) - 1))
                        l_0_55 = l_0_55 .. ";" .. (string.sub)(l_0_61, l_0_66 + 1) .. ";"
                      end
                      l_0_61 = (sigattr_tail[l_0_60]).utf8p2
                      l_0_65 = (string.find)(l_0_61, "\\[^\\]*$") or 0
                      -- DECOMPILER ERROR at PC379: Confused about usage of register: R39 in 'UnsetPending'

                      do
                        do
                          if (string.find)(l_0_61, ".", l_0_65, true) ~= nil then
                            local l_0_67 = nil
                            l_0_55 = l_0_55 .. (crypto.CRC32Buffer)(-1, (string.sub)(l_0_61, (l_0_65) + 1, (string.find)(l_0_61, ".", l_0_65, true) - 1), 0, #(string.sub)(l_0_61, (l_0_65) + 1, (string.find)(l_0_61, ".", l_0_65, true) - 1))
                            l_0_55 = l_0_55 .. ";" .. (string.sub)(l_0_61, l_0_67 + 1) .. ";"
                          end
                          ;
                          (table.insert)(l_0_51, (sigattr_tail[l_0_60]).utf8p1)
                          ;
                          (table.insert)(l_0_51, (sigattr_tail[l_0_60]).utf8p2)
                          -- DECOMPILER ERROR at PC413: LeaveBlock: unexpected jumping out DO_STMT

                          -- DECOMPILER ERROR at PC413: LeaveBlock: unexpected jumping out DO_STMT

                          -- DECOMPILER ERROR at PC413: LeaveBlock: unexpected jumping out DO_STMT

                        end
                      end
                    end
                  end
                end
                l_0_50.file_list = l_0_51
                local l_0_68, l_0_69 = (bm.get_process_relationships)()
                for l_0_73,l_0_74 in ipairs(l_0_68) do
                  if l_0_74.image_path ~= nil then
                    (bm.add_related_process)(l_0_74.ppid)
                  end
                end
                for l_0_78,l_0_79 in ipairs(l_0_69) do
                  if l_0_79.image_path ~= nil then
                    (bm.add_related_process)(l_0_79.ppid)
                    TrackPidAndTechniqueBM(l_0_79.ppid, "T1485", "susp_ransomware_childproc_type2")
                  end
                end
                ;
                (bm.add_related_string)("ransom_files_main", l_0_55, bm.RelatedStringBMReport)
                local l_0_80 = safeJsonSerialize(l_0_50)
                ;
                (bm.add_related_string)("genb_ransom_meta", l_0_80, bm.RelatedStringBMReport)
                ;
                (bm.trigger_sig)("GenericRansomware:Type2", l_0_80)
                sms_untrusted_process()
                ;
                (bm.add_action)("SmsAsyncScanEvent", 100)
                TrackPidAndTechniqueBM(l_0_53, "T1486", "susp_ransomware_type4")
                reportTimingData()
                reportSessionInformationInclusive()
                if l_0_18 == false and #l_0_12 > 0 and l_0_17 ~= nil and l_0_17 ~= "" then
                  local l_0_81 = {}
                  l_0_81.Extension = l_0_29
                  l_0_81.imagePath = l_0_52
                  l_0_81.commandLine = l_0_54
                  l_0_81.ppID = l_0_53
                  l_0_81.UserName = l_0_15
                  l_0_81.Domain = l_0_16
                  l_0_81.file_list = l_0_12
                  l_0_11 = l_0_81
                  l_0_81 = safeJsonSerialize
                  l_0_81 = l_0_81(l_0_11)
                  ;
                  (bm.add_related_string)("RemoteClientData", l_0_81, bm.RelatedStringBMReport)
                  ;
                  (bm.trigger_sig)("RemoteGenericRansomware:Type2", l_0_81)
                  local l_0_82, l_0_83 = pcall(updateSystemDNSServers)
                  if not l_0_82 then
                    (bm.add_related_string)("updateSystemDNSServers_fail", l_0_83, bm.RelatedStringBMReport)
                  end
                  local l_0_84, l_0_85, l_0_86, l_0_87 = pcall(updateDomainInfo)
                  if l_0_84 then
                    l_0_11.ipTypeFlags = GetRollingQueueKeyValue("domainInfo", l_0_17)
                  else
                    ;
                    (bm.add_related_string)("updateDomainInfo_fail", l_0_85, bm.RelatedStringBMReport)
                  end
                  local l_0_88 = SafeGetUrlReputation
                  local l_0_89 = {}
                  -- DECOMPILER ERROR at PC554: No list found for R43 , SetList fails

                  local l_0_90 = {}
                  l_0_90.SIG_CONTEXT = "BM"
                  l_0_90.CONTEXT_SOURCE = "GenRansom"
                  l_0_90.TAG = "NOLOOKUP"
                  l_0_90.data = safeJsonSerialize(l_0_11)
                  l_0_88 = l_0_88(l_0_89, l_0_90)
                  l_0_89 = l_0_88.urls
                  l_0_89 = l_0_89[l_0_17]
                  if l_0_89 then
                    l_0_89 = l_0_88.urls
                    l_0_89 = l_0_89[l_0_17]
                    l_0_89 = l_0_89.determination
                    if l_0_89 == 2 then
                      l_0_89 = l_0_88.urls
                      l_0_89 = l_0_89[l_0_17]
                      l_0_89 = l_0_89.confidence
                      if l_0_89 then
                        l_0_89 = l_0_88.urls
                        l_0_89 = l_0_89[l_0_17]
                        l_0_89 = l_0_89.confidence
                        if l_0_89 >= 60 then
                          l_0_89 = l_0_88.urls
                          l_0_89 = l_0_89[l_0_17]
                          l_0_89 = l_0_89.context
                          l_0_89 = l_0_89.Source
                          if l_0_89 == "GenRansom" then
                            l_0_89 = l_0_88.urls
                            l_0_89 = l_0_89[l_0_17]
                            l_0_89 = l_0_89.confidence
                            l_0_11.confidence = l_0_89
                            l_0_89 = l_0_88.urls
                            l_0_89 = l_0_89[l_0_17]
                            l_0_89 = l_0_89.context
                            l_0_89 = l_0_89.Family
                            l_0_11.family = l_0_89
                            l_0_90 = l_0_88.urls
                            l_0_90 = l_0_90[l_0_17]
                            l_0_90 = l_0_90.context
                            l_0_90 = l_0_90.action
                            l_0_90 = l_0_88.urls
                            l_0_90 = l_0_90[l_0_17]
                            l_0_90 = l_0_90.context
                            l_0_90 = l_0_90.action_parameter
                            l_0_90 = l_0_88.urls
                            l_0_90 = l_0_90[l_0_17]
                            l_0_90 = l_0_90.context
                            l_0_90 = l_0_90.action_ttl
                            l_0_11.action, l_0_89 = l_0_89, {action = l_0_90, parameter = l_0_90, ttl = l_0_90}
                            l_0_11.ip = l_0_17
                            l_0_11.unscrubbed_username = l_0_13
                            l_0_11.unscrubbed_domain = l_0_14
                            l_0_90 = bm
                            l_0_90 = l_0_90.trigger_sig
                            l_0_90("RemoteGenericRansomware:Malware", safeJsonSerialize(l_0_11))
                          end
                        end
                      end
                    end
                  end
                end
                do
                  do
                    ;
                    (bm.add_related_string)("sigcount_type2", l_0_2, bm.RelatedStringBMReport)
                    do return mp.INFECTED end
                    do
                      local l_0_91 = {}
                      -- DECOMPILER ERROR at PC638: No list found for R25 , SetList fails

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC640: LeaveBlock: unexpected jumping out IF_STMT

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

