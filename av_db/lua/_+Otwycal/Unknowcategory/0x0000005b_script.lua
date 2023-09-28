-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_+Otwycal\Unknowcategory\0x0000005b_luac 

-- params : ...
-- function num : 0
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 1129928494 then
  return mp.CLEAN
end
if peattributes.epscn_islast ~= true then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData - (mp.getfilesize)() <= 0 then
  return mp.CLEAN
end
if (mp.crc32)(-1, epcode, 1, 64) ~= 148363345 then
  return mp.CLEAN
end
return mp.INFECTED

