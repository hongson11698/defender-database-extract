-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_Poson\Unknowcategory\0x00000009_luac 

-- params : ...
-- function num : 0
if epcode[1] ~= 232 then
  return mp.CLEAN
end
if (mp.bitand)((pesecs[pehdr.NumberOfSections]).Characteristics, 2701131841) ~= 2701131841 then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if peattributes.lastscn_valign == false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData <= 4352 then
  return mp.CLEAN
end
if (mp.crc32)(-1, fopclog, 1, 5) ~= 406984109 then
  return mp.CLEAN
end
return mp.INFECTED

