-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAHmdEnablePrecision\0x00001273_luac 

-- params : ...
-- function num : 0
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 7) then
  local l_0_0 = "hmd_precision_strike"
  local l_0_1 = 300
  local l_0_2 = 60
  local l_0_3 = 100
  local l_0_4, l_0_5 = pcall(MpCommon.RollingQueueQueryKey, l_0_0, "already_ran")
  local l_0_6 = {}
  if l_0_4 and l_0_5 then
    return mp.CLEAN
  end
  local l_0_7 = "http://962b56e5-5eb2-4ed3-8757-3f22f190d202.info"
  local l_0_8 = {}
  l_0_8[1] = l_0_7
  local l_0_9 = {}
  l_0_9.SIG_CONTEXT = "LUA_GENERIC"
  l_0_9.CONTENT_SOURCE = "HEIMDALL_PRECISION_STRIKE"
  l_0_9.TAG = "NOLOOKUP"
  local l_0_10 = {}
  local l_0_11, l_0_12 = pcall(mp.GetUrlReputation, l_0_8, l_0_9)
  if not l_0_11 or not l_0_12 or not l_0_12.urls then
    return mp.CLEAN
  end
  AppendToRollingQueue(l_0_0, "already_ran", 1, l_0_1)
  local l_0_13 = "hmd_precision_strike_scanfile_count"
  AppendToRollingQueue(l_0_13, "max_scan", l_0_3, l_0_2)
  for l_0_17,l_0_18 in ipairs(l_0_12.urls) do
    if l_0_18.determination == 4 then
      local l_0_19 = l_0_18.urlresponsecontext
      local l_0_20 = ""
      if l_0_19 then
        for l_0_24,l_0_25 in ipairs(l_0_19) do
          if l_0_25.key == "Payload" then
            l_0_20 = l_0_25.value
            break
          end
        end
      end
      do
        local l_0_26 = {}
        for l_0_30 in l_0_20:gmatch("[^%+][^%+]+") do
          local l_0_31 = l_0_30:match("(.+)::(.+)")
          l_0_26[l_0_31] = l_0_30
        end
        local l_0_32 = l_0_26
        for l_0_36,l_0_37 in pairs(l_0_32) do
          local l_0_38 = l_0_36
          l_0_10[l_0_38] = R29_PC104
        end
        if l_0_10.ttl then
          l_0_2 = l_0_10.ttl
        end
        if l_0_10.suppress_ttl then
          l_0_1 = l_0_10.suppress_ttl
        end
        if l_0_10.scanpath then
          local l_0_39 = l_0_10.scanpath
          local l_0_40 = split(l_0_39, ",")
          for l_0_44,R29_PC104 in ipairs(l_0_40) do
            local l_0_46 = (string.lower)((MpCommon.Base64Decode)(l_0_45))
            local l_0_47 = "hmd_precision_strike_folderscan"
            AppendToRollingQueue(l_0_47, l_0_46, 1, l_0_2)
            ;
            (mp.TriggerScanResource)("folder", l_0_46, 0)
          end
        end
        do
          l_0_39 = l_0_10.fullfilepathscan
          if l_0_39 then
            l_0_39 = l_0_10.fullfilepathscan
            local l_0_48 = nil
            l_0_40 = split
            l_0_48 = l_0_39
            l_0_40 = l_0_40(l_0_48, ",")
            local l_0_49 = nil
            l_0_48 = ipairs
            l_0_49 = l_0_40
            l_0_48 = l_0_48(l_0_49)
            for l_0_53,l_0_54 in l_0_48 do
              local l_0_53, l_0_54 = nil
              l_0_53 = string
              l_0_53 = l_0_53.lower
              l_0_54 = MpCommon
              l_0_54 = l_0_54.Base64Decode
              l_0_53 = l_0_53(l_0_54(l_0_52))
              local l_0_55 = nil
              do
                local l_0_56 = nil
                l_0_56 = "hmd_precision_strike_fullfilepathscan"
                l_0_55(l_0_56, l_0_53, 1, l_0_2)
                -- DECOMPILER ERROR at PC175: Overwrote pending register: R32 in 'AssignReg'

                -- DECOMPILER ERROR at PC176: Overwrote pending register: R32 in 'AssignReg'

                l_0_56 = "file"
                l_0_55(l_0_56, l_0_53, 0)
                -- DECOMPILER ERROR at PC181: Confused about usage of register R31 for local variables in 'ReleaseLocals'

                -- DECOMPILER ERROR at PC181: LeaveBlock: unexpected jumping out DO_STMT

              end
            end
          end
          l_0_39 = l_0_10.scanfile
          if l_0_39 then
            l_0_39 = l_0_10.scanfile
            local l_0_57 = nil
            l_0_40 = split
            l_0_40 = l_0_40(l_0_39, ",")
            local l_0_58 = l_0_55
            for l_0_62,l_0_63 in ipairs(l_0_40) do
              local l_0_59, l_0_60, l_0_61, l_0_62, l_0_63 = nil
              l_0_53 = string
              l_0_53 = l_0_53.lower
              l_0_57 = MpCommon
              l_0_57 = l_0_57.Base64Decode
              -- DECOMPILER ERROR at PC199: Confused about usage of register: R29 in 'UnsetPending'

              l_0_58 = l_0_52
              l_0_53 = l_0_53(l_0_57(l_0_58))
              local l_0_64 = nil
              local l_0_65 = nil
              AppendToRollingQueue(l_0_59, l_0_60, l_0_61, l_0_62)
            end
          end
          do
            l_0_39 = l_0_10.maxscan
            if l_0_39 then
              l_0_39 = tonumber
              l_0_40 = l_0_10.maxscan
              l_0_39 = l_0_39(l_0_40)
              l_0_3 = l_0_39
              l_0_39 = "hmd_precision_strike_scanfile_count"
              local l_0_66 = l_0_59
              l_0_40 = AppendToRollingQueue
              l_0_40(l_0_39, "max_scan", l_0_3, l_0_2)
            end
            do
              l_0_39 = l_0_10.process
              if l_0_39 then
                l_0_39 = mp
                l_0_39 = l_0_39.get_contextdata
                l_0_40 = mp
                l_0_40 = l_0_40.CONTEXT_DATA_PROCESS_PPID
                l_0_39 = l_0_39(l_0_40)
                local l_0_67 = nil
                if l_0_39 == nil then
                  l_0_40 = MpCommon
                  l_0_40 = l_0_40.ExpandEnvironmentVariables
                  l_0_40 = l_0_40("%windir%")
                  local l_0_68 = l_0_60
                  local l_0_69 = l_0_61
                  local l_0_70 = l_0_62
                  -- DECOMPILER ERROR at PC257: Overwrote pending register: R30 in 'AssignReg'

                  if #(sysio.GetProcessFromFileName)(l_0_40 .. "\\system32\\" .. "svchost.exe") > 0 then
                    l_0_39 = (string.format)("pid:%d,ProcessStart:%u", (((sysio.GetProcessFromFileName)(l_0_40 .. "\\system32\\" .. "svchost.exe"))[1]).pid, l_0_53)
                  end
                end
                do
                  do
                    l_0_40 = MpCommon
                    l_0_40 = l_0_40.BmTriggerSig
                    l_0_40(l_0_39, "Heimdall_ProcessDispatch", l_0_10.process)
                    l_0_39 = l_0_10.firewall
                    if l_0_39 then
                      l_0_39 = l_0_10.firewall
                      local l_0_71 = nil
                      l_0_40 = split
                      l_0_40 = l_0_40(l_0_39, ",")
                      local l_0_72 = nil
                      for l_0_76,l_0_77 in ipairs(l_0_40) do
                        local l_0_73, l_0_74, l_0_75, l_0_76, l_0_77 = nil
                        -- DECOMPILER ERROR at PC278: Overwrote pending register: R30 in 'AssignReg'

                        -- DECOMPILER ERROR at PC279: Overwrote pending register: R30 in 'AssignReg'

                        -- DECOMPILER ERROR at PC280: Confused about usage of register: R29 in 'UnsetPending'

                        l_0_53 = l_0_53((((sysio.GetProcessFromFileName)(l_0_40 .. "\\system32\\" .. "svchost.exe"))[1]).pid)
                        local l_0_78 = nil
                        if l_0_53 then
                          l_0_53 = explode(l_0_53, l_0_71)
                          if #l_0_53 == 3 then
                            local l_0_79 = nil
                            local l_0_80 = nil
                            -- DECOMPILER ERROR at PC297: Overwrote pending register: R33 in 'AssignReg'

                            local l_0_81 = nil
                            local l_0_82 = nil
                            -- DECOMPILER ERROR at PC300: Overwrote pending register: R35 in 'AssignReg'

                            -- DECOMPILER ERROR at PC306: Overwrote pending register: R35 in 'AssignReg'

                            -- DECOMPILER ERROR at PC308: Overwrote pending register: R36 in 'AssignReg'

                            -- DECOMPILER ERROR at PC309: Overwrote pending register: R36 in 'AssignReg'

                            -- DECOMPILER ERROR at PC310: Overwrote pending register: R37 in 'AssignReg'

                            -- DECOMPILER ERROR at PC315: Overwrote pending register: R36 in 'AssignReg'

                            ;
                            (MpCommon.AddBlockingFirewallRule)(l_0_71, l_0_72, l_0_73, l_0_74)
                          end
                        end
                      end
                    end
                    l_0_39 = l_0_10.sinkholedns
                    if l_0_39 then
                      l_0_39 = l_0_10.sinkholedns
                      local l_0_88 = l_0_73
                      l_0_40 = split
                      l_0_40 = l_0_40(l_0_39, ",")
                      local l_0_89 = l_0_74
                      for l_0_93,l_0_94 in ipairs(l_0_40) do
                        local l_0_90, l_0_91, l_0_92, l_0_93, l_0_94 = l_0_75, l_0_76
                        l_0_53 = MpCommon
                        l_0_53 = l_0_53.Base64Decode
                        -- DECOMPILER ERROR at PC334: Confused about usage of register: R29 in 'UnsetPending'

                        l_0_53 = l_0_53((((sysio.GetProcessFromFileName)(l_0_40 .. "\\system32\\" .. "svchost.exe"))[1]).pid)
                        local l_0_95 = nil
                        -- DECOMPILER ERROR at PC340: Overwrote pending register: R33 in 'AssignReg'

                        if l_0_53 then
                          l_0_53 = explode(l_0_53, l_0_71)
                          -- DECOMPILER ERROR at PC346: Overwrote pending register: R33 in 'AssignReg'

                          local l_0_96, l_0_97 = nil
                          -- DECOMPILER ERROR at PC348: Overwrote pending register: R33 in 'AssignReg'

                          -- DECOMPILER ERROR at PC349: Overwrote pending register: R34 in 'AssignReg'

                          -- DECOMPILER ERROR at PC353: Overwrote pending register: R33 in 'AssignReg'

                          local l_0_98 = nil
                          local l_0_99 = nil
                          l_0_6[l_0_71], l_0_72 = l_0_72, {res = (MpCommon.AddDnsBlockListDomain)(l_0_53[1], l_0_71), isAllowed = l_0_53[1]}
                        end
                      end
                    end
                    l_0_39 = l_0_10.dnscache
                    if l_0_39 then
                      l_0_39 = l_0_10.dnscache
                      local l_0_100 = l_0_90
                      l_0_40 = split
                      l_0_40 = l_0_40(l_0_39, ",")
                      local l_0_101 = nil
                      for l_0_105,l_0_106 in ipairs(l_0_40) do
                        local l_0_102, l_0_103, l_0_104, l_0_105, l_0_106 = nil
                        l_0_53 = MpCommon
                        l_0_53 = l_0_53.Base64Decode
                        -- DECOMPILER ERROR at PC374: Confused about usage of register: R29 in 'UnsetPending'

                        l_0_53 = l_0_53((((sysio.GetProcessFromFileName)(l_0_40 .. "\\system32\\" .. "svchost.exe"))[1]).pid)
                        local l_0_107 = nil
                        -- DECOMPILER ERROR at PC380: Overwrote pending register: R33 in 'AssignReg'

                        if l_0_53 then
                          l_0_53 = explode(l_0_53, l_0_71)
                          local l_0_108 = nil
                          -- DECOMPILER ERROR at PC385: Overwrote pending register: R33 in 'AssignReg'

                          for l_0_88,l_0_89 in ipairs(l_0_71) do
                            local l_0_109, l_0_110, l_0_111, l_0_112, l_0_113 = nil
                            l_0_100 = mp
                            l_0_100 = l_0_100.GetDnsCacheRecordsByType
                            l_0_101 = l_0_89
                            l_0_100 = l_0_100(l_0_101)
                            l_0_100 = "dnscache"
                            l_0_101 = "_"
                            l_0_102 = l_0_89
                            l_0_100 = l_0_100 .. l_0_101 .. l_0_102
                            l_0_6[l_0_100] = {[l_0_89] = l_0_100}
                          end
                        end
                      end
                    end
                    l_0_39 = l_0_10.debug
                    if l_0_39 then
                      l_0_39 = l_0_10.debug
                      local l_0_114 = nil
                      l_0_40 = split
                      l_0_40 = l_0_40(l_0_39, ",")
                      local l_0_115 = nil
                      do
                        local l_0_116 = nil
                        for l_0_120,l_0_53 in ipairs(l_0_40) do
                          local l_0_117, l_0_118, l_0_119, l_0_120, l_0_121 = nil
                          local l_0_122 = nil
                          -- DECOMPILER ERROR at PC420: Overwrote pending register: R33 in 'AssignReg'

                          local l_0_123 = nil
                          local l_0_124, l_0_125 = nil
                          -- DECOMPILER ERROR at PC424: Overwrote pending register: R35 in 'AssignReg'

                          -- DECOMPILER ERROR at PC425: Overwrote pending register: R36 in 'AssignReg'

                          for l_0_101,l_0_102 in l_0_88(l_0_89) do
                            local l_0_126, l_0_127, l_0_128, l_0_129, l_0_130 = nil
                            -- DECOMPILER ERROR at PC433: Overwrote pending register: R33 in 'AssignReg'

                            -- DECOMPILER ERROR at PC434: Overwrote pending register: R34 in 'AssignReg'

                            -- DECOMPILER ERROR at PC437: Confused about usage of register: R33 in 'UnsetPending'

                            -- DECOMPILER ERROR at PC437: Overwrote pending register: R40 in 'AssignReg'

                            -- DECOMPILER ERROR at PC438: Overwrote pending register: R41 in 'AssignReg'

                            -- DECOMPILER ERROR at PC439: Overwrote pending register: R42 in 'AssignReg'

                            -- DECOMPILER ERROR at PC440: Overwrote pending register: R40 in 'AssignReg'

                            if nil == "PC" then
                              local l_0_131 = nil
                              -- DECOMPILER ERROR at PC441: Overwrote pending register: R41 in 'AssignReg'

                              -- DECOMPILER ERROR at PC442: Overwrote pending register: R42 in 'AssignReg'

                              l_0_116 = MpCommon
                              l_0_116 = l_0_116.GetPersistContext
                              -- DECOMPILER ERROR at PC445: Confused about usage of register: R34 in 'UnsetPending'

                              l_0_117 = nil
                              l_0_114 = l_0_114(l_0_115(l_0_116, l_0_117))
                            else
                              -- DECOMPILER ERROR at PC450: Confused about usage of register: R33 in 'UnsetPending'

                              -- DECOMPILER ERROR at PC452: Confused about usage of register: R33 in 'UnsetPending'

                              -- DECOMPILER ERROR at PC452: Overwrote pending register: R40 in 'AssignReg'

                              if nil == "PCNP" then
                                l_0_114 = ":"
                                -- DECOMPILER ERROR at PC454: Confused about usage of register: R34 in 'UnsetPending'

                                -- DECOMPILER ERROR at PC455: Overwrote pending register: R40 in 'AssignReg'

                                local l_0_132 = nil
                                l_0_114 = table_pack
                                -- DECOMPILER ERROR at PC460: Confused about usage of register: R34 in 'UnsetPending'

                                l_0_114 = l_0_114(pcall(MpCommon.GetPersistContextNoPath, l_0_117))
                              else
                                -- DECOMPILER ERROR at PC465: Confused about usage of register: R33 in 'UnsetPending'

                                -- DECOMPILER ERROR at PC467: Confused about usage of register: R33 in 'UnsetPending'

                                -- DECOMPILER ERROR at PC467: Overwrote pending register: R40 in 'AssignReg'

                                if nil == "RQ" then
                                  l_0_114 = ":"
                                  -- DECOMPILER ERROR at PC469: Confused about usage of register: R34 in 'UnsetPending'

                                  -- DECOMPILER ERROR at PC470: Overwrote pending register: R40 in 'AssignReg'

                                  local l_0_133 = nil
                                  l_0_114 = table_pack
                                  -- DECOMPILER ERROR at PC475: Confused about usage of register: R34 in 'UnsetPending'

                                  -- DECOMPILER ERROR at PC475: Overwrote pending register: R44 in 'AssignReg'

                                  l_0_114 = l_0_114(pcall(MpCommon.RollingQueueQuery, l_0_117))
                                else
                                  -- DECOMPILER ERROR at PC480: Confused about usage of register: R33 in 'UnsetPending'

                                  -- DECOMPILER ERROR at PC482: Confused about usage of register: R33 in 'UnsetPending'

                                  -- DECOMPILER ERROR at PC482: Overwrote pending register: R40 in 'AssignReg'

                                  if nil == "AC" then
                                    l_0_114 = ":"
                                    -- DECOMPILER ERROR at PC484: Confused about usage of register: R34 in 'UnsetPending'

                                    -- DECOMPILER ERROR at PC485: Overwrote pending register: R40 in 'AssignReg'

                                    local l_0_134 = nil
                                    l_0_114 = table_pack
                                    -- DECOMPILER ERROR at PC490: Confused about usage of register: R34 in 'UnsetPending'

                                    -- DECOMPILER ERROR at PC490: Overwrote pending register: R44 in 'AssignReg'

                                    l_0_114 = l_0_114(pcall(MpCommon.AtomicCounterValueEx, l_0_117))
                                  end
                                end
                              end
                            end
                          end
                        end
                        l_0_6.debug = {[l_0_103] = l_0_114, [l_0_103] = l_0_114, [l_0_103] = l_0_114, [l_0_103] = l_0_114}
                        -- DECOMPILER ERROR at PC499: Confused about usage of register R43 for local variables in 'ReleaseLocals'

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC499: LeaveBlock: unexpected jumping out IF_STMT

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
  local l_0_135 = nil
  do
    local l_0_136 = l_0_117
    l_0_9.report = safeJsonSerialize(l_0_6)
    l_0_9.TAG = "NOLOOKUP"
    pcall(mp.GetUrlReputation, R18_PC514, l_0_19)
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC518: Confused about usage of register R42 for local variables in 'ReleaseLocals'

    l_0_0 = mp
    l_0_0 = l_0_0.CLEAN
    do return l_0_0 end
    -- DECOMPILER ERROR: 16 unprocessed JMP targets
  end
end

