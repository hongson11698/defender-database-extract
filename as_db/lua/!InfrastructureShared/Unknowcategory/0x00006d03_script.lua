-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006d03_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_amd64_image") and (mp.get_mpattribute)("pea_hasexports") and (mp.getfilesize)() > 20000000 then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan")
  return mp.INFECTED
end
return mp.CLEAN

