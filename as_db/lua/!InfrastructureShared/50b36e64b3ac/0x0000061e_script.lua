-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\50b36e64b3ac\0x0000061e_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 then
    if (string.match)(l_0_0, "/%.[^/]+$") then
      TrackPidAndTechniqueBM("BM", "T1003.008", "OSCredentialDumping_mt2023")
      TrackPidAndTechniqueBM("BM", "T1564.001", "DefenseEvasion_HiddenArtifacts_mt2023")
      reportRelatedBmHits()
      return mp.INFECTED
    else
      -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

      if isTainted(l_0_0, "remote_file_chmodexec") then
        TrackPidAndTechniqueBM("BM", "T1003.008", "OSCredentialDumping_mt2023")
        reportRelatedBmHits()
        return mp.INFECTED
      end
    end
  end
  return mp.CLEAN
end

