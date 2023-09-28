-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\509b332e81397\0x0000495f_luac 

-- params : ...
-- function num : 0
(MpCommon.ClearDnsServers)()
updateSystemDNSServers()
return mp.CLEAN

