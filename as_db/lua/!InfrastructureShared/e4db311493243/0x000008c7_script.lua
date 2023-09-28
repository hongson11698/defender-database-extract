-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\e4db311493243\0x000008c7_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC38: Unhandled construct in 'MakeBoolean' P3

if (mp.get_sigattr_event_count)(16525) < 10 or (((mp.get_sigattr_event_count)(16387) < 10 and (mp.get_sigattr_event_count)(16385) < 9) or (mp.get_sigattr_event_count)(16384) >= 10 or (mp.get_sigattr_event_count)(16389) < 10) then
  return mp.CLEAN
end
local l_0_0 = function()
  -- function num : 0_0
  do
    local l_1_0 = {}
    -- DECOMPILER ERROR at PC49: No list found for R0 , SetList fails

    do return l_1_0 end
    -- WARNING: undefined locals caused missing assignments!
  end
end

local l_0_1 = 90
local l_0_2 = 1000
local l_0_3 = 0
local l_0_4 = 0
local l_0_5 = 0
local l_0_6 = 0
local l_0_7 = 0
local l_0_8 = 0
local l_0_9 = (bm.get_current_process_startup_info)()
local l_0_10 = l_0_9.ppid
local l_0_11 = ((bm.get_imagepath)()):lower()
local l_0_12 = {}
local l_0_13 = {}
local l_0_14 = {}
local l_0_15 = {}
local l_0_16 = "DafrRQ"
local l_0_17 = l_0_10 .. "SeqRead:"
local l_0_18 = l_0_10 .. "DelFile:"
local l_0_19 = l_0_10 .. "CrtFile:"
local l_0_20 = l_0_10 .. "RenFile:"
local l_0_21 = l_0_10 .. "ChgFile:"
local l_0_22 = l_0_10 .. "MetFile:"
local l_0_23 = l_0_10 .. "Threshold:"
do
  local l_0_24 = l_0_10 .. "Timing:"
  for l_0_28 = 1, mp.SIGATTR_LOG_SZ do
    if (sigattr_tail[l_0_28]).attribute == 16525 or (sigattr_tail[l_0_28]).attribute == 16387 or (sigattr_tail[l_0_28]).attribute == 16384 or (sigattr_tail[l_0_28]).attribute == 16385 or (sigattr_tail[l_0_28]).attribute == 16386 or (sigattr_tail[l_0_28]).attribute == 16389 and ((sigattr_tail[l_0_28]).utf8p2):lower() == "attr_c09458eb" then
      local l_0_29 = ((sigattr_tail[l_0_28]).utf8p1):lower()
      do
        local l_0_30 = l_0_29:match("(.+)[/\\].+")
        local l_0_31 = false
        local l_0_32 = "%.[^%.%\\]+$"
        if l_0_29:byte(1) == 37 or l_0_30 == "" or l_0_30 == nil then
          l_0_31 = true
        end
        if not l_0_31 then
          if next(l_0_12) == nil then
            l_0_12 = l_0_0()
          end
          for l_0_36,l_0_37 in ipairs(l_0_12) do
            if l_0_29:find(l_0_37) then
              l_0_31 = true
              break
            end
          end
        end
        do
          if not l_0_31 then
            if ((sigattr_tail[l_0_28]).attribute ~= 16525 or (sigattr_tail[l_0_28]).attribute == 16387) and (function(l_2_0)
  -- function num : 0_1 , upvalues : l_0_32
  local l_2_1 = l_2_0:match(l_0_32)
  if l_2_1 ~= nil then
    l_2_1 = l_2_1:lower()
    local l_2_2 = (mp.GetExtensionClass)(l_2_1)
    if l_2_2 == 1 or l_2_2 == 4 or l_2_2 == 0 then
      return false
    else
      return true
    end
  else
    do
      do return false end
    end
  end
end
)(l_0_29) then
              l_0_4 = l_0_4 + 1
              l_0_14[l_0_18 .. l_0_29] = l_0_30
            end
            if (sigattr_tail[l_0_28]).attribute == 16384 then
              l_0_5 = l_0_5 + 1
              l_0_14[l_0_19 .. l_0_29] = l_0_30
            else
              if (sigattr_tail[l_0_28]).attribute == 16386 then
                local l_0_39 = nil
                if l_0_39(((sigattr_tail[l_0_28]).utf8p2):lower()) then
                  l_0_6 = l_0_6 + 1
                  l_0_14[l_0_20 .. ((sigattr_tail[l_0_28]).utf8p2):lower()] = l_0_29
                end
              else
                do
                  if (sigattr_tail[l_0_28]).attribute == 16385 then
                    l_0_7 = l_0_7 + 1
                    local l_0_40 = nil
                    l_0_14[l_0_21 .. l_0_29] = ((sigattr_tail[l_0_28]).utf8p2):lower()
                  else
                    do
                      do
                        if (sigattr_tail[l_0_28]).attribute == 16389 then
                          l_0_8 = l_0_8 + 1
                          local l_0_41 = nil
                          l_0_14[l_0_22 .. l_0_29] = ((sigattr_tail[l_0_28]).utf8p2):lower()
                        end
                        do
                          if (l_0_3 < 10 or (l_0_4 < 10 and l_0_7 < 10) or (l_0_5 < 10 and l_0_6 < 10) or l_0_8 >= 10) then
                            for l_0_45 in pairs(l_0_14) do
                              local l_0_42 = nil
                              -- DECOMPILER ERROR at PC284: Confused about usage of register: R37 in 'UnsetPending'

                              if (string.sub)((string.format)("%s", l_0_37), 1, #l_0_17) == l_0_17 then
                                (table.insert)(l_0_15, (string.sub)((string.format)("%s", l_0_37), #l_0_17 + 1))
                              end
                            end
                            for l_0_50,l_0_51 in pairs(l_0_15) do
                              local l_0_47 = nil
                              local l_0_53 = (string.match)((string.format)("%s", l_0_37), "[^\\]+$")
                              local l_0_54 = nil
                              do
                                local l_0_55 = l_0_14[l_0_17 .. l_0_52] .. "\\.*\\" .. l_0_53
                                local l_0_56 = nil
                                if l_0_6 > 0 then
                                  local l_0_57 = l_0_4 > 0 and l_0_14[l_0_18 .. l_0_52] or false
                                  -- DECOMPILER ERROR at PC339: Overwrote pending register: R43 in 'AssignReg'

                                  -- DECOMPILER ERROR at PC343: Confused about usage of register: R43 in 'UnsetPending'

                                  -- DECOMPILER ERROR at PC351: Overwrote pending register: R44 in 'AssignReg'

                                  if nil then
                                    (table.insert)(l_0_13, "RenamedTo:" .. nil)
                                  else
                                    local l_0_58 = nil
                                    local l_0_59 = nil
                                    l_0_58 = l_0_14[l_0_20 .. l_0_52:match("(.*)%.%w+$")] == l_0_52
                                    if l_0_58 then
                                      l_0_59 = ((tostring(l_0_52:match("(.*)%.%w+$"))):lower()):gsub("(:\\users)\\[%w._@\']+", "%1\\PII_")
                                      ;
                                      (table.insert)(l_0_13, "RenamedFrom:" .. l_0_59)
                                    end
                                  end
                                end
                                do
                                  local l_0_60 = nil
                                  local l_0_61 = nil
                                  local l_0_62 = nil
                                  -- DECOMPILER ERROR at PC409: Overwrote pending register: R46 in 'AssignReg'

                                  -- DECOMPILER ERROR at PC412: Confused about usage of register: R45 in 'UnsetPending'

                                  -- DECOMPILER ERROR at PC422: Confused about usage of register: R46 in 'UnsetPending'

                                  do
                                    if l_0_5 > 0 and (nil or (function(l_3_0, l_3_1)
  -- function num : 0_2
  l_3_1 = (string.gsub)(l_3_1, "%?", ".")
  l_3_1 = (string.gsub)(l_3_1, "%-", "%%-")
  for l_3_5 in pairs(l_3_0) do
    if (string.find)(l_3_5, l_3_1, 1, false) then
      return l_3_5
    end
  end
  return nil
end
)(l_0_14, l_0_19 .. l_0_56)) then
                                      local l_0_63 = l_0_7 > 0 and l_0_14[l_0_21 .. l_0_52] or false
                                      ;
                                      (table.insert)(l_0_13, "Created:" .. (((tostring((function(l_3_0, l_3_1)
  -- function num : 0_2
  l_3_1 = (string.gsub)(l_3_1, "%?", ".")
  l_3_1 = (string.gsub)(l_3_1, "%-", "%%-")
  for l_3_5 in pairs(l_3_0) do
    if (string.find)(l_3_5, l_3_1, 1, false) then
      return l_3_5
    end
  end
  return nil
end
)(l_0_14, l_0_19 .. l_0_56))):lower()):gsub("(:\\users)\\[%w._@\']+", "%1\\PII_")):sub(#l_0_19 + 1))
                                    end
                                    -- DECOMPILER ERROR at PC440: Confused about usage of register: R45 in 'UnsetPending'

                                    -- DECOMPILER ERROR at PC448: Confused about usage of register: R45 in 'UnsetPending'

                                    do
                                      if not (function(l_3_0, l_3_1)
  -- function num : 0_2
  l_3_1 = (string.gsub)(l_3_1, "%?", ".")
  l_3_1 = (string.gsub)(l_3_1, "%-", "%%-")
  for l_3_5 in pairs(l_3_0) do
    if (string.find)(l_3_5, l_3_1, 1, false) then
      return l_3_5
    end
  end
  return nil
end
)(l_0_14, l_0_22 .. l_0_52) then
                                        local l_0_64, l_0_66, l_0_68, l_0_70, l_0_72, l_0_74, l_0_76 = , (function(l_3_0, l_3_1)
  -- function num : 0_2
  l_3_1 = (string.gsub)(l_3_1, "%?", ".")
  l_3_1 = (string.gsub)(l_3_1, "%-", "%%-")
  for l_3_5 in pairs(l_3_0) do
    if (string.find)(l_3_5, l_3_1, 1, false) then
      return l_3_5
    end
  end
  return nil
end
)(l_0_14, l_0_22 .. l_0_56)
                                      end
                                      -- DECOMPILER ERROR at PC454: Confused about usage of register: R47 in 'UnsetPending'

                                      -- DECOMPILER ERROR at PC458: Confused about usage of register: R46 in 'UnsetPending'

                                      -- DECOMPILER ERROR at PC462: Confused about usage of register: R44 in 'UnsetPending'

                                      -- DECOMPILER ERROR at PC466: Confused about usage of register: R46 in 'UnsetPending'

                                      do
                                        if not l_0_61 or not l_0_68 or not "_CreateDelete_" then
                                          local l_0_65, l_0_67, l_0_69, l_0_71, l_0_73, l_0_75, l_0_77 = , (not l_0_61 or not l_0_68) and not l_0_62 or not l_0_64 or "_RenameChange_"
                                        end
                                        -- DECOMPILER ERROR at PC475: Confused about usage of register: R48 in 'UnsetPending'

                                        -- DECOMPILER ERROR at PC483: Confused about usage of register: R48 in 'UnsetPending'

                                        if not IsKeyInRollingQueue(l_0_16, l_0_23 .. l_0_73) then
                                          AppendToRollingQueue(l_0_16, l_0_23 .. l_0_73, 1, l_0_1, l_0_2)
                                          -- DECOMPILER ERROR at PC492: Confused about usage of register: R48 in 'UnsetPending'

                                          AppendToRollingQueue(l_0_16, l_0_24 .. l_0_73, (MpCommon.GetCurrentTimeT)() or -1, l_0_1, l_0_2)
                                        else
                                          -- DECOMPILER ERROR at PC508: Confused about usage of register: R48 in 'UnsetPending'

                                          do
                                            local l_0_78 = nil
                                            do
                                              local l_0_79 = nil
                                              local l_0_80 = nil
                                              -- DECOMPILER ERROR at PC524: Confused about usage of register: R51 in 'UnsetPending'

                                              -- DECOMPILER ERROR at PC529: Confused about usage of register: R48 in 'UnsetPending'

                                              if ((MpCommon.GetCurrentTimeT)() or -2) - (tonumber(GetRollingQueueKeyValue(l_0_16, l_0_24 .. l_0_73)) or -1) < 0 or ((MpCommon.GetCurrentTimeT)() or -2) - (tonumber(GetRollingQueueKeyValue(l_0_16, l_0_24 .. l_0_73)) or -1) > 90 then
                                                AppendToRollingQueue(l_0_16, l_0_23 .. l_0_73, 1, l_0_1, l_0_2)
                                                -- DECOMPILER ERROR at PC538: Confused about usage of register: R48 in 'UnsetPending'

                                                AppendToRollingQueue(l_0_16, l_0_24 .. l_0_73, (MpCommon.GetCurrentTimeT)() or -1, l_0_1, l_0_2)
                                                return mp.CLEAN
                                              end
                                              -- DECOMPILER ERROR at PC556: Confused about usage of register: R48 in 'UnsetPending'

                                              do
                                                local l_0_81 = nil
                                                if tonumber(GetRollingQueueKeyValue(l_0_16, l_0_23 .. l_0_73)) >= 10 then
                                                  (bm.trigger_sig)("GenericRansomware", "Type0")
                                                  local l_0_82 = nil
                                                  for l_0_86,l_0_87 in pairs(l_0_15) do
                                                    local l_0_83, l_0_84, l_0_85, l_0_86, l_0_87 = nil
                                                    -- DECOMPILER ERROR at PC574: Confused about usage of register: R58 in 'UnsetPending'

                                                    local l_0_88 = nil
                                                    ;
                                                    (table.insert)({}, (string.gsub)(R58_PC574:lower(), "(:\\users)\\[%w._@\']+", "%1\\PII_"))
                                                  end
                                                  local l_0_89 = nil
                                                  -- DECOMPILER ERROR at PC587: Confused about usage of register: R52 in 'UnsetPending'

                                                  -- DECOMPILER ERROR at PC588: Confused about usage of register: R48 in 'UnsetPending'

                                                  -- DECOMPILER ERROR at PC589: Confused about usage of register: R49 in 'UnsetPending'

                                                  -- DECOMPILER ERROR at PC590: Confused about usage of register: R50 in 'UnsetPending'

                                                  -- DECOMPILER ERROR at PC595: Confused about usage of register: R53 in 'UnsetPending'

                                                  local l_0_90 = nil
                                                  reportSessionInformationInclusive()
                                                  ;
                                                  (bm.add_related_string)("GenericRansomware", safeJsonSerialize({ThresholdValue = l_0_88, HeurType = l_0_84, CountStartTime = l_0_85, CountEndTime = l_0_86, DeletedFileCount = l_0_4, CreatedFileCount = l_0_5, RenamedFileCount = l_0_6, ChangedFileCount = l_0_7, 
TamperedFiles = {}
, CreatedRenamed = l_0_13, ImagePath = l_0_11, BMHitCount = (bm.get_sig_count)()}), bm.RelatedStringBMReport)
                                                  reportTimingData()
                                                  return mp.INFECTED
                                                else
                                                  -- DECOMPILER ERROR at PC623: Confused about usage of register: R48 in 'UnsetPending'

                                                  -- DECOMPILER ERROR at PC625: Confused about usage of register: R52 in 'UnsetPending'

                                                  AppendToRollingQueue(l_0_16, l_0_23 .. l_0_90, l_0_88 + 1, l_0_1, l_0_2)
                                                end
                                                -- DECOMPILER ERROR at PC629: LeaveBlock: unexpected jumping out DO_STMT

                                                -- DECOMPILER ERROR at PC629: LeaveBlock: unexpected jumping out DO_STMT

                                                -- DECOMPILER ERROR at PC629: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                                -- DECOMPILER ERROR at PC629: LeaveBlock: unexpected jumping out IF_STMT

                                                -- DECOMPILER ERROR at PC629: LeaveBlock: unexpected jumping out DO_STMT

                                                -- DECOMPILER ERROR at PC629: LeaveBlock: unexpected jumping out DO_STMT

                                                -- DECOMPILER ERROR at PC629: LeaveBlock: unexpected jumping out DO_STMT

                                                -- DECOMPILER ERROR at PC629: LeaveBlock: unexpected jumping out DO_STMT

                                                -- DECOMPILER ERROR at PC629: LeaveBlock: unexpected jumping out DO_STMT

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
                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC632: LeaveBlock: unexpected jumping out IF_STMT

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
  -- DECOMPILER ERROR at PC636: freeLocal<0 in 'ReleaseLocals'

  -- DECOMPILER ERROR: 23 unprocessed JMP targets
end

