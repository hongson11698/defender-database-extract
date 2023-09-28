-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!KadiaA\Unknowcategory\0x00000039_luac 

-- params : ...
-- function num : 0
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 1886610478 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).Characteristics ~= 3221225568 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData <= 8192 then
  return mp.CLEAN
end
if peattributes.lastscn_eqsizes ~= true then
  return mp.CLEAN
end
if peattributes.epscn_islast ~= false then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData - 309, 39)
if (mp.crc32)(-1, l_0_0, 1, 39) ~= 2032582807 then
  return mp.CLEAN
end
return mp.INFECTED

