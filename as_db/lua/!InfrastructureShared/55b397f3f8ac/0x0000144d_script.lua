-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\55b397f3f8ac\0x0000144d_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
    local l_0_1 = this_sigattrlog[2]
  else
    do
      do return mp.CLEAN end
      local l_0_2, l_0_3 = , (bm.get_process_relationships)()
      for l_0_7,l_0_8 in ipairs(l_0_3) do
        local l_0_4 = nil
        -- DECOMPILER ERROR at PC36: Confused about usage of register: R7 in 'UnsetPending'

        if (mp.bitand)(R7_PC36.reason_ex, 1) == 1 and IsTacticObservedForPid(R7_PC36.ppid, "webservice_childproc") then
          TrackPidAndTechniqueBM(l_0_2.ppid, "T1190", "webservice_childproc", 7200)
        end
      end
      if IsTacticObservedForPid(l_0_2.ppid, "webservice_childproc") then
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

