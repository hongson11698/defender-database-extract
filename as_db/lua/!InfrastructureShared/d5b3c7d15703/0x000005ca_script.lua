-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d5b3c7d15703\0x000005ca_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1095", "CommandandControl_NonApplicationLayerProtocol")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED

