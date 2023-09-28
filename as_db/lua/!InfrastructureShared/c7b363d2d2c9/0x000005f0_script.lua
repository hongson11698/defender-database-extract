-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\c7b363d2d2c9\0x000005f0_luac 

-- params : ...
-- function num : 0
if IsTechniqueObservedGlobal("CredentialAccess_SshBruteForceIncoming", true) then
  TrackPidAndTechniqueBM("BM", "T1003.008", "CredentialAccess_OSCredentialDumping_mt2023")
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN

