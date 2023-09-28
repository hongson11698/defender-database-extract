-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\ffb3cccd8635\0x000005c8_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1005", "CredentialAccess_SensitiveFileExfill")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED

