-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d2b36ebf251b\0x000066dd_luac 

-- params : ...
-- function num : 0
sms_untrusted_process()
pcall(add_parents, "-1", 5)
TrackPidAndTechniqueBM("BM", "T1003.001", "credentialdumping", 86400)
return mp.INFECTED

