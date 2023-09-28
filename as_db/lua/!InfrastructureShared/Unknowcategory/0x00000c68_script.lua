-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c68_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 258) ~= 1635021685 then
  return mp.CLEAN
end
if headerpage[262] ~= 114 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:TarFile")
return mp.CLEAN

