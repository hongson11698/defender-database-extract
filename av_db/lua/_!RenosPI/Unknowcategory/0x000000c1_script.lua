-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!RenosPI\Unknowcategory\0x000000c1_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 6 then
  return mp.CLEAN
end
if pehdr.SizeOfImage ~= 102400 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 505) ~= 1162104643 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 541) ~= 3758096416 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(pehdr.AddressOfEntryPoint), 11)
if (mp.crc32)(-1, l_0_0, 1, 11) ~= 2687456419 then
  return mp.CLEAN
end
return mp.INFECTED

