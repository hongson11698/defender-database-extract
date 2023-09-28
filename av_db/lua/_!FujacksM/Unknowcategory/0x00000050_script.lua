-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!FujacksM\Unknowcategory\0x00000050_luac 

-- params : ...
-- function num : 0
if (pesecs[1]).NameDW ~= 4411950 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 4411950 then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 2 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 1) ~= 1925695319 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 5) ~= 2380248239 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 9) ~= 1488609085 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 13) ~= 265289498 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 17) ~= 267581356 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 21) ~= 3354918589 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 25) ~= 657513564 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 29) ~= 871873039 then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size ~= 5140 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)((pesecs[1]).VirtualAddress + 1288), 80)
if (mp.crc32)(-1, l_0_0, 1, 80) ~= 312309962 then
  return mp.CLEAN
end
return mp.INFECTED

