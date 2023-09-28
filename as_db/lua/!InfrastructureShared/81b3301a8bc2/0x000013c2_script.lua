-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\81b3301a8bc2\0x000013c2_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 30000000 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1049", "Discovery_SystemNetworkConnectionsDiscovery")
reportRelatedBmHits()
return mp.INFECTED

