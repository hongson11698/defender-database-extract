-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!InjectorSL\Unknowcategory\0x00000069_luac 

-- params : ...
-- function num : 0
if epcode[1] ~= 232 then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData < 69632 then
  return mp.CLEAN
end
if pehdr.MajorLinkerVersion ~= 8 then
  return mp.CLEAN
end
if pehdr.MinorLinkerVersion ~= 0 then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 4 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size <= 0 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[1]).PointerToRawData, 34)
if (mp.crc32)(-1, l_0_0, 1, 34) ~= 2079317048 then
  return mp.CLEAN
end
return mp.INFECTED

