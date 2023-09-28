-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!FlyStudioC\Unknowcategory\0x00000038_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if pehdr.SizeOfImage ~= 241664 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 593) ~= 188416 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 597) ~= 36864 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 621) ~= 3758096448 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(36864), 2)
if (mp.readu_u16)(l_0_0, 1) ~= 19031 then
  return mp.CLEAN
end
local l_0_1 = (mp.readfile)((pe.foffset_rva)(39040), 48)
if (mp.crc32)(-1, l_0_1, 1, 48) ~= 1794013526 then
  return mp.CLEAN
end
return mp.INFECTED

