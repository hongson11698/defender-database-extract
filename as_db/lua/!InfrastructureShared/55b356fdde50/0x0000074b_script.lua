-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\55b356fdde50\0x0000074b_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC18: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (sysio.IsFileExists)(l_0_0) then
    (bm.add_related_file)(l_0_0)
  end
  TrackPidAndTechniqueBM("BM", "T1505.002", "TransportAgent")
  return mp.INFECTED
end

