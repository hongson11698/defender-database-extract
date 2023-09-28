-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1a3b36bbb45b1\0x00000615_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[7]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[8]).matched or (this_sigattrlog[9]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7 = (this_sigattrlog[8]).utf8p1
    else
    end
    if (this_sigattrlog[10]).matched then
      do return mp.CLEAN end
      -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

      if (this_sigattrlog[10]).utf8p1 ~= nil then
        (bm.add_related_file)((this_sigattrlog[10]).utf8p1)
        -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

        ;
        (mp.ReportLowfi)((this_sigattrlog[10]).utf8p1, 4257421737)
      end
      TrackPidAndTechniqueBM("BM", "T1574", "DefenseEvasion_HijackExecutionFlow_HiddenSuspiciousModuleDrop")
      return mp.INFECTED
    end
  end
end

