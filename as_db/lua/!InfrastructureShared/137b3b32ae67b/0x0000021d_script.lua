-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\137b3b32ae67b\0x0000021d_luac 

-- params : ...
-- function num : 0
if IsLegacyOrgMachine() or IsTechniqueObservedForPid("BM", "ttexclusion") or IsTacticObservedForPid("BM", "ttexclusion") or IsTacticObservedForPid("BM", "ttexclusion_cln") then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1222.001", "WinDir_perm")
return mp.INFECTED

