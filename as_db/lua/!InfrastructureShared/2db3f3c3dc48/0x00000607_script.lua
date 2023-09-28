-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2db3f3c3dc48\0x00000607_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  else
  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  if (not (this_sigattrlog[2]).matched or (string.lower)((this_sigattrlog[2]).utf8p1)) and (string.match)((string.lower)((this_sigattrlog[2]).utf8p1), "/%.[^/]+$") then
    TrackPidAndTechniqueBM("BM", "T1564.001", "DefenseEvasion_HiddenArtifacts_mt2023")
    reportRelatedBmHits()
    return mp.INFECTED
  end
  return mp.CLEAN
end

