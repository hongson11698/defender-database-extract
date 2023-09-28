-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\43b3f10b81e8\0x0000666f_luac 

-- params : ...
-- function num : 0
pcallEx("maceSendConfig", maceSendConfig, "mace_systembc")
pcallEx("reportRelatedBmHits", reportRelatedBmHits)
reportRelevantUntrustedEntities(1)
reportTimingData()
return mp.INFECTED

