-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\8fb3a9a6e87d\0x00000611_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0, l_0_2, l_0_3, l_0_5, l_0_7 = nil, nil
  end
  do
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1, l_0_4, l_0_6, l_0_8 = , (this_sigattrlog[3]).utf8p2
    end
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC32: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC40: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_4 and l_0_1 and (string.match)(l_0_4, "/%.[^/]+$") and (string.find)(l_0_1, l_0_4, 1, true) then
      TrackPidAndTechniqueBM("BM", "T1564.001", "DefenseEvasion_HiddenArtifacts_mt2023")
      reportRelatedBmHits()
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

