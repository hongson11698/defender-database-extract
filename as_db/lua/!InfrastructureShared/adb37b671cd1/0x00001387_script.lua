-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\adb37b671cd1\0x00001387_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1048", "Exfiltration_Archive")
addRelatedProcess()
reportRelatedBmHits()
RemediateProcessTreeForLinux()
return mp.INFECTED

