-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063af_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 36 then
  return mp.INFECTED
end
if (mp.bitand)(mp.HSTR_WEIGHT, 15) >= 3 then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan_injector")
end
return mp.CLEAN

