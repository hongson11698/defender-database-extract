-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\15b34e366b3d\0x00007e68_luac 

-- params : ...
-- function num : 0
reportAndSinkholeDNSTelemetry("altDNSServerUsage", "AlternateDNSServerUsage")
;
(MpCommon.SetPersistContextNoPath)("altDNSServerUsage", {}, 1)
;
(bm.add_related_string)("debug", "Current", bm.RelatedStringBMReport)
reportPersistedContext("dnsServers", "bmurl", "AlternateDNSServerUsage")
;
(bm.add_related_string)("debug", "Previous", bm.RelatedStringBMReport)
reportPersistedContext("lastDnsServers", "bmurl", "AlternateDNSServerUsage")
;
(bm.add_related_string)("debug", "Refresh", bm.RelatedStringBMReport)
updateSystemDNSServers()
reportPersistedContext("dnsServers", "bmurl", "AlternateDNSServerUsage")
return mp.INFECTED

