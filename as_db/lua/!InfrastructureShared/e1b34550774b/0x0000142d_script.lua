-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\e1b34550774b\0x0000142d_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 ~= nil then
      local l_0_4 = nil
      if not isParentPackageManager(l_0_4) then
        TrackPidAndTechniqueBM(l_0_4, "T1562.001", "DefenseEvasion")
        if IsTacticObservedForPid(l_0_4, "CommandAndControl_RemoteFileCopy") then
          return mp.INFECTED
        end
        if (mp.GetParentProcInfo)(l_0_0) ~= nil and IsTacticObservedForPid(((mp.GetParentProcInfo)(l_0_0)).ppid, "CommandAndControl_RemoteFileCopy") then
          return mp.INFECTED
        end
      end
    end
    return mp.CLEAN
  end
end

