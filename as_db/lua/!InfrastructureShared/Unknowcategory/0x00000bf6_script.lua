-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000bf6_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 1) ~= 60000 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:ArjFile")
return mp.CLEAN

