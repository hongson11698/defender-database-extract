-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\129b38c4f918b\0x000014c0_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 100000000 then
  return mp.CLEAN
end
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
for l_0_5 = 1, l_0_0 do
  if (sigattr_tail[l_0_5]).attribute == 16385 then
    local l_0_6 = ((sigattr_tail[l_0_5]).utf8p1):lower()
    if IsPathIncludedLinuxRansomCheck(l_0_6) then
      l_0_1[(mp.crc32)(0, l_0_6, 1, #l_0_6)] = 1
    end
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
      if (l_0_1[l_0_16] ~= nil or l_0_1[l_0_15] ~= nil) and l_0_8[l_0_15] == nil then
        local l_0_17 = l_0_13:match("%.[^/%.]+$")
        if l_0_17 ~= nil and (mp.GetExtensionClass)(l_0_17) ~= 3 and #l_0_13 < #l_0_14 and l_0_14:find(l_0_13, 1, true) == 1 and l_0_14:byte(#l_0_13 + 1) ~= 58 then
          l_0_8[l_0_15] = 1
          local l_0_18 = l_0_14:match("%.[^/%.]+$")
          if l_0_18 ~= nil and (mp.GetExtensionClass)(l_0_18) ~= 4 and IsExtensionDatePattern(l_0_18) == false then
            local l_0_19 = (string.sub)(l_0_14, #l_0_13 + 1)
            if l_0_7[l_0_19] ~= nil then
              (table.insert)(l_0_7[l_0_19], l_0_12)
              if #l_0_7[l_0_19] >= 5 then
                (bm.add_related_string)("ransom_extension", l_0_19, bm.RelatedStringBMReport)
                local l_0_20 = "genh_linux_ransom_meta"
                local l_0_21 = {}
                local l_0_22 = ((bm.get_imagepath)()):lower()
                -- DECOMPILER ERROR at PC167: Overwrote pending register: R18 in 'AssignReg'

                if (bm.get_current_process_startup_info)() ~= nil then
                  do
                    do
                      local l_0_23, l_0_24, l_0_25, l_0_26, l_0_27, l_0_33, l_0_34, l_0_35, l_0_36, l_0_37 = ((bm.get_current_process_startup_info)()).ppid
                      AppendToRollingQueue(l_0_20, "cur_image_path", l_0_22)
                      -- DECOMPILER ERROR at PC176: Confused about usage of register: R18 in 'UnsetPending'

                      AppendToRollingQueue(l_0_20, "proc_info", l_0_23)
                      AppendToRollingQueue(l_0_20, "appended_ext", l_0_19)
                      for l_0_31,l_0_32 in pairs(l_0_7[l_0_19]) do
                        local l_0_28 = nil
                        -- DECOMPILER ERROR at PC190: Confused about usage of register: R23 in 'UnsetPending'

                        ;
                        (bm.add_related_file)((sigattr_tail[l_0_33]).utf8p1)
                        -- DECOMPILER ERROR at PC197: Confused about usage of register: R23 in 'UnsetPending'

                        ;
                        (table.insert)(l_0_21, (sigattr_tail[l_0_33]).utf8p1)
                      end
                      AppendToRollingQueue(l_0_20, "renamed_file_path", (table.concat)(l_0_21, ","))
                      addRelatedProcess()
                      reportRelatedBmHits()
                      TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
                      ;
                      (bm.trigger_sig)("GenericLinuxRansomware", "Type7")
                      do return mp.INFECTED end
                      do
                        local l_0_38 = {}
                        -- DECOMPILER ERROR at PC231: No list found for R15 , SetList fails

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC233: LeaveBlock: unexpected jumping out IF_STMT

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

