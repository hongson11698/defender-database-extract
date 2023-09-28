-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\15b344c47506\0x00001371_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1562.001", "DefenseEvasion_nmi_watchdog")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED

