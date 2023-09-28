-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\f8b3b4b9371e\0x0000137d_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1552.001", "CredentialAccess")
TrackPidAndTechniqueBM("BM", "T1074", "Collection_DataStaged")
addRelatedProcess()
return mp.INFECTED

