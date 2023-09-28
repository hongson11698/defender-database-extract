-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2db3cafd9f92\0x00007a4c_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  reportPersistedContext("deprecatedDnsRecordType", "bmurl", "SuspiciousDnsQuery.A")
  ;
  (MpCommon.SetPersistContextNoPath)("deprecatedDnsRecordType", {}, 1)
else
  if (this_sigattrlog[2]).matched then
    reportPersistedContext("unknownDnsRecordType", "bmurl", "SuspiciousDnsQuery.A")
    ;
    (MpCommon.SetPersistContextNoPath)("unknownDnsRecordType", {}, 1)
  end
end
return mp.INFECTED

