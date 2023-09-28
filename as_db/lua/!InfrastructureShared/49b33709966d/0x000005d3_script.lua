-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\49b33709966d\0x000005d3_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1562.001", "DefenseEvasion_nmi_watchdog")
addRelatedProcess()
reportRelatedBmHits()
RemediateProcessTreeForLinux()
return mp.INFECTED

