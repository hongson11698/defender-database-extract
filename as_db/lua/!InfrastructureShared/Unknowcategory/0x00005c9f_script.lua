-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005c9f_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_ismsil") and (mp.get_mpattribute)("pea_no_exports") and (mp.get_mpattribute)("pea_no_tls") then
  return mp.INFECTED
end
return mp.CLEAN

