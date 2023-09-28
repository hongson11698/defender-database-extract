-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\c0b375513f75\0x00001460_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if IsTechniqueObservedGlobal("T1098", false) then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  if not IsTechniqueObservedGlobal("T1078", false) or IsTechniqueObservedGlobal("T1136", false) then
    local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = "T1078"
  else
    do
      if IsTechniqueObservedGlobal("CredentialAccess_SshBruteForceIncoming", true) then
        (mp.set_mpattribute)("Lua:CredentialAccess_SshBruteForceInLateral")
      end
      -- DECOMPILER ERROR at PC40: Confused about usage of register: R0 in 'UnsetPending'

      if "CredentialAccess_SshBruteForceInLateral" then
        (bm.add_related_string)("mitre_technique", "CredentialAccess_SshBruteForceInLateral", bm.RelatedStringBMReport)
        return mp.INFECTED
      else
        TrackPidAndTechniqueBM("BM", "T1021.004", "LateralMovement")
      end
      return mp.CLEAN
    end
  end
end

