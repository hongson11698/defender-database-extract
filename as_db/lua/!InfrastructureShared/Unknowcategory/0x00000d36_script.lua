-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d36_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 6) == 4002240453 and (mp.readu_u32)(headerpage, 86) == 36873062 and (mp.readu_u32)(headerpage, 134) == 16875242 then
  (mp.set_mpattribute)("MpNonPIIFileType")
  return mp.INFECTED
end
return mp.CLEAN

