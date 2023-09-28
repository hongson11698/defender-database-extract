-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\e1b3baa5177c\0x00001487_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  else
  end
  -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[11]).matched or (this_sigattrlog[11]).utf8p1 == nil or (this_sigattrlog[11]).utf8p1 ~= nil then
    taint((this_sigattrlog[11]).utf8p1, "remote_file_created_taint", 3600)
    local l_0_5 = nil
    local l_0_6, l_0_7 = , (bm.get_process_relationships)(((bm.get_current_process_startup_info)()).ppid)
    AppendToRollingQueue("queue_pid_taintfactory_a", l_0_6.ppid, 1, 600)
    for l_0_11,l_0_12 in ipairs(l_0_7) do
      local l_0_8 = nil
      -- DECOMPILER ERROR at PC53: Confused about usage of register: R8 in 'UnsetPending'

      ;
      (bm.add_related_process)((600).ppid)
      -- DECOMPILER ERROR at PC56: Confused about usage of register: R8 in 'UnsetPending'

      TrackPidAndTechniqueBM((600).ppid, "T1105", "CommandAndControl_RemoteFileCopy.A")
    end
    ;
    (bm.trigger_sig)("RemoteFileCopy", l_0_5)
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

