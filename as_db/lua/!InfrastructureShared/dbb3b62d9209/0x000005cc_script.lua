-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\dbb3b62d9209\0x000005cc_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1003.008", "CredentialAccess_OSCredentialDumping_mt2023")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED

