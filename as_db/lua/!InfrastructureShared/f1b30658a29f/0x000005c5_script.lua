-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\f1b30658a29f\0x000005c5_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1098", "Persistence_AccountManipulation")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED

