-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\39b3c3af7078\0x0000136d_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1027.002", "DefenseEvasion_Packing")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED

