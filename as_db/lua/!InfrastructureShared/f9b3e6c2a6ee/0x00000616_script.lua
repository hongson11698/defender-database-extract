-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\f9b3e6c2a6ee\0x00000616_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[7]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[8]).matched or (this_sigattrlog[9]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (string.lower)((this_sigattrlog[8]).utf8p1)
    else
    end
    -- DECOMPILER ERROR at PC55: Confused about usage of register: R0 in 'UnsetPending'

    if (not (this_sigattrlog[10]).matched or (string.lower)((this_sigattrlog[10]).utf8p1)) and (string.match)((string.lower)((this_sigattrlog[10]).utf8p1), "/%.[^/]+$") then
      TrackPidAndTechniqueBM("BM", "T1564.001", "DefenseEvasion_HiddenArtifacts")
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

