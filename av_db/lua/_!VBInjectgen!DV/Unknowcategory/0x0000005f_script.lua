-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!VBInjectgen!DV\Unknowcategory\0x0000005f_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.hasexports ~= false then
  return mp.CLEAN
end
if peattributes.no_relocs ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[11]).RVA ~= 0 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 4 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW == 1920168494 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).Characteristics ~= 8 then
  return mp.CLEAN
end
if epcode[1] ~= 104 then
  return mp.CLEAN
end
if epcode[5] ~= 0 then
  return mp.CLEAN
end
if epcode[6] ~= 232 then
  return mp.CLEAN
end
if epcode[11] ~= 0 then
  return mp.CLEAN
end
if epcode[12] ~= 0 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[pehdr.NumberOfSections]).PointerToRawData, 17)
if (mp.crc32)(-1, l_0_0, 1, 17) ~= 186366073 then
  return mp.CLEAN
end
return mp.INFECTED

