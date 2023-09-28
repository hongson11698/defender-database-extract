-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\38b3ffe45ad2\0x00000617_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    if (string.match)(l_0_0, "^%./%.[^/]+$") then
      TrackPidAndTechniqueBM("BM", "T1564.001", "DefenseEvasion_HiddenArtifacts_mt2023")
    else
      -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

      if (string.match)(l_0_0, "/%.[^/]+$") and isTainted(l_0_0, "remote_file_created_taint") then
        TrackPidAndTechniqueBM("BM", "T1564.001", "DefenseEvasion_HiddenArtifacts_mt2023")
        reportRelatedBmHits()
        return mp.INFECTED
      end
    end
  end
  return mp.CLEAN
end

