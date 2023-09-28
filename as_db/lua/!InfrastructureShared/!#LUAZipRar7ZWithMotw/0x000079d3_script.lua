-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAZipRar7ZWithMotw\0x000079d3_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and (mp.GetMOTWZone)() >= 3 then
  (mp.UfsSetMetadataBool)("LUA:ZipRar7ZWithMotw", true)
  ;
  (mp.set_mpattribute)("//LUA:ZipRar7ZWithMotw.A")
  return mp.INFECTED
end
return mp.CLEAN

