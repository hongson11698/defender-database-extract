-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5b3b3032db49e\0x0000089e_luac 

-- params : ...
-- function num : 0
if mp.SIGATTR_LOG_SZ == 0 then
  return mp.CLEAN
end
for l_0_3 = mp.SIGATTR_LOG_SZ, 1, -1 do
  local l_0_4 = sigattr_tail[l_0_3]
  if l_0_4.matched and l_0_4.utf8p1 then
    local l_0_5 = (string.lower)(l_0_4.utf8p1)
    local l_0_6 = false
    local l_0_7 = "hklm\\\\software(\\\\policies)?\\\\microsoft\\\\(windows defender|microsoft antimalware)"
    l_0_6 = (MpCommon.StringRegExpSearch)(l_0_7, l_0_5)
    if l_0_6 then
      local l_0_8 = (bm.get_current_process_startup_info)()
      if not l_0_8 or not l_0_8.ppid then
        return mp.CLEAN
      end
      local l_0_9 = {}
      local l_0_10 = {}
      -- DECOMPILER ERROR at PC50: No list found for R10 , SetList fails

      -- DECOMPILER ERROR at PC51: No list found for R9 , SetList fails

      -- DECOMPILER ERROR at PC52: Overwrote pending register: R11 in 'AssignReg'

      -- DECOMPILER ERROR at PC53: Overwrote pending register: R12 in 'AssignReg'

      l_0_10 = l_0_10("svchost.exe", "gpsvc")
      if checkParentCmdline(l_0_8.ppid, l_0_9, 5) or IsKeyInRollingQueue("gpo_broad_exclusion", l_0_10, true) then
        local l_0_11 = l_0_5
        local l_0_12 = 604800
        local l_0_13 = 50
        local l_0_14 = "BadExclusions_GPO"
        local l_0_15 = GetRollingQueueKeyValue(l_0_14, l_0_11)
        if not l_0_15 then
          AppendToRollingQueue(l_0_14, l_0_11, 1, l_0_12, l_0_13)
          add_parents()
          return mp.INFECTED
        else
          if l_0_15 and l_0_15 < 2 then
            AppendToRollingQueue(l_0_14, l_0_11, l_0_15 + 1, l_0_12, l_0_13)
            add_parents()
            return mp.INFECTED
          else
            return mp.CLEAN
          end
        end
      else
        do
          do
            add_parents()
            do return mp.INFECTED end
            -- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
end
return mp.CLEAN

