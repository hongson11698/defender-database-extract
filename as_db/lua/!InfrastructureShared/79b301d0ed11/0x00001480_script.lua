-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\79b301d0ed11\0x00001480_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 then
    local l_0_2 = nil
    if (bm.get_process_notifications)(l_0_0) ~= nil then
      for l_0_6,l_0_7 in ipairs((bm.get_process_notifications)(l_0_0)) do
        local l_0_3 = nil
        -- DECOMPILER ERROR at PC20: Confused about usage of register: R6 in 'UnsetPending'

        if R6_PC20.tag == bm.ActionTagFileCreate then
          taint(R6_PC20.rawutf8p1, "remote_file_created_taint", 3600)
          AppendToRollingQueue("queue_pid_taintfactory_a", l_0_2, 1, 600)
          local l_0_9 = nil
          local l_0_10, l_0_11 = , (bm.get_process_relationships)(((bm.get_current_process_startup_info)()).ppid)
          for l_0_15,l_0_16 in ipairs(l_0_11) do
            local l_0_12 = nil
            -- DECOMPILER ERROR at PC50: Confused about usage of register: R15 in 'UnsetPending'

            ;
            (bm.add_related_process)(R15_PC50.ppid)
            TrackPidAndTechniqueBM(R15_PC50.ppid, "T1105", "CommandAndControl")
          end
          return mp.INFECTED
        end
      end
    end
  end
  do
    return mp.CLEAN
  end
end

