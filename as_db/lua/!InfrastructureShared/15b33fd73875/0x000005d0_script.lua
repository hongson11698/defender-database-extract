-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\15b33fd73875\0x000005d0_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1561.001", "Impact_DiskWipe")
addRelatedProcess()
reportRelatedBmHits()
RemediateProcessTreeForLinux()
return mp.INFECTED

