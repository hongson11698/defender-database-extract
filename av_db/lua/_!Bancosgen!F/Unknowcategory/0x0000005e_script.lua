-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Bancosgen!F\Unknowcategory\0x0000005e_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 10 then
  return mp.CLEAN
end
if pehdr.SizeOfImage ~= 1478656 then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData ~= 953856 then
  return mp.CLEAN
end
if (pesecs[1]).VirtualAddress ~= 4096 then
  return mp.CLEAN
end
if (pesecs[1]).PointerToRawData ~= 4096 then
  return mp.CLEAN
end
if (pesecs[1]).Characteristics ~= 3758096608 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[1]).PointerToRawData + 9264, 336)
if (mp.crc32)(-1, l_0_0, 1, 336) ~= 3848306789 then
  return mp.CLEAN
end
return mp.INFECTED

