-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007484_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 6 then
  return mp.INFECTED
end
if not peattributes.isdll then
  return mp.CLEAN
end
if peattributes.amd64_image then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan_2345cn")
else
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan_2345cn")
end
return mp.CLEAN

