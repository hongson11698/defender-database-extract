-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\104b3e19c72f8\0x00000077_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1567", "ExfilOverWeb")
reportRelatedBmHits()
add_parents()
addOverallNetworkVolume()
return mp.INFECTED

