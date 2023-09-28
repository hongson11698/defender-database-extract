-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b344a72c81\0x000005c6_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1048", "ExfiltrationOverAlternativeProtocol")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED

