-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066ca_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isdll") and (mp.get_mpattribute)("pea_hasexports") and (mp.get_mpattribute)("pea_no_tls") and (mp.getfilesize)() >= 1986560 and (mp.getfilesize)() < 2015232 then
  return mp.INFECTED
end
return mp.CLEAN

