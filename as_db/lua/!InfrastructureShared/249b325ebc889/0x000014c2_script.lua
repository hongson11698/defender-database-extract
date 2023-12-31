-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\249b325ebc889\0x000014c2_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
local l_0_2 = ((bm.get_imagepath)()):lower()
if l_0_2 ~= nil and IsExcludedByImagePath(l_0_2) then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC25: Overwrote pending register: R3 in 'AssignReg'

if (bm.get_current_process_startup_info)() ~= nil then
  do
    local l_0_3, l_0_4, l_0_10 = ((bm.get_current_process_startup_info)()).ppid
    -- DECOMPILER ERROR at PC27: Confused about usage of register: R3 in 'UnsetPending'

    if isParentPackageManager(l_0_3, true) then
      return mp.CLEAN
    end
    for l_0_8 = 1, l_0_0 do
      local l_0_5 = nil
      -- DECOMPILER ERROR at PC40: Confused about usage of register: R7 in 'UnsetPending'

      if (sigattr_tail[R7_PC40]).attribute == 16385 then
        l_0_1[(mp.crc32)(0, ((sigattr_tail[R7_PC40]).utf8p1):lower(), 1, #((sigattr_tail[R7_PC40]).utf8p1):lower())] = 1
      end
    end
    local l_0_11 = nil
    local l_0_12 = {}
    for l_0_16 = 1, l_0_0 do
      local l_0_13 = {}
      if (sigattr_tail[(mp.crc32)(0, ((sigattr_tail[R7_PC40]).utf8p1):lower(), 1, #((sigattr_tail[R7_PC40]).utf8p1):lower())]).attribute == 16386 then
        local l_0_18 = ((sigattr_tail[(mp.crc32)(0, ((sigattr_tail[R7_PC40]).utf8p1):lower(), 1, #((sigattr_tail[R7_PC40]).utf8p1):lower())]).utf8p2):lower()
        local l_0_19 = ((sigattr_tail[l_0_17]).utf8p1):lower()
        local l_0_20 = (mp.crc32)(0, l_0_18, 1, #l_0_18)
        if (l_0_1[(mp.crc32)(0, l_0_19, 1, #l_0_19)] ~= nil or l_0_1[l_0_20] ~= nil) and l_0_13[l_0_20] == nil then
          local l_0_21 = nil
          if l_0_18:match("%.[^/%.]+$") ~= nil and (mp.GetExtensionClass)(l_0_18:match("%.[^/%.]+$")) ~= 3 and #l_0_18 < #l_0_19 and l_0_19:find(l_0_18, 1, true) == 1 and l_0_19:byte(#l_0_18 + 1) ~= 58 then
            l_0_13[l_0_20] = 1
            local l_0_22 = nil
            if l_0_19:match("%.[^/%.]+$") ~= nil and (mp.GetExtensionClass)(l_0_19:match("%.[^/%.]+$")) ~= 4 and IsExcludedByImagePathFileExtension(l_0_2, l_0_19:match("%.[^/%.]+$")) == false and IsExcludedByImagePathFileExtensionRegEx(l_0_2, l_0_19:match("%.[^/%.]+$")) == false and IsExcludedByImagePathFileExtensionSuffix(l_0_2, l_0_19:match("%.[^/%.]+$")) == false and IsExtensionDatePattern(l_0_19:match("%.[^/%.]+$")) == false then
              local l_0_23 = nil
              if l_0_12[(string.sub)(l_0_19, #l_0_18 + 1)] ~= nil then
                (table.insert)(l_0_12[(string.sub)(l_0_19, #l_0_18 + 1)], l_0_17)
                if #l_0_12[(string.sub)(l_0_19, #l_0_18 + 1)] >= 10 then
                  (bm.add_related_string)("ransom_extension", (string.sub)(l_0_19, #l_0_18 + 1), bm.RelatedStringBMReport)
                  local l_0_24 = nil
                  local l_0_25 = "genj_linux_ransom_meta"
                  AppendToRollingQueue(l_0_25, "cur_image_path", l_0_2)
                  AppendToRollingQueue(l_0_25, "proc_info", l_0_11)
                  AppendToRollingQueue(l_0_25, "appended_ext", l_0_24)
                  for l_0_29,l_0_30 in pairs(l_0_12[l_0_24]) do
                    local l_0_26 = {}
                    -- DECOMPILER ERROR at PC214: Confused about usage of register: R23 in 'UnsetPending'

                    ;
                    (bm.add_related_file)((sigattr_tail[R23_PC214]).utf8p1)
                    ;
                    (table.insert)(l_0_26, (sigattr_tail[R23_PC214]).utf8p1)
                  end
                  -- DECOMPILER ERROR at PC231: Confused about usage of register: R18 in 'UnsetPending'

                  AppendToRollingQueue(l_0_25, "renamed_file_path", (table.concat)(l_0_26, ","))
                  addRelatedProcess()
                  reportRelatedBmHits()
                  TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
                  return mp.INFECTED
                end
              else
                do
                  do
                    local l_0_31 = nil
                    l_0_12[l_0_31] = {l_0_17}
                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
            end
          end
        end
      end
    end
    return mp.CLEAN
  end
end

