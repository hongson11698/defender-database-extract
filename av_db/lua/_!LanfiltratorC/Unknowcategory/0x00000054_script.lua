-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!LanfiltratorC\Unknowcategory\0x00000054_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.epoutofimage ~= true then
  return mp.CLEAN
end
if pehdr.AddressOfEntryPoint ~= 428288 then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData ~= 416256 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 8 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[1]).PointerToRawData + 404504, 1024)
if (mp.crc32)(-1, l_0_0, 1, 1024) ~= 2928032113 then
  return mp.CLEAN
end
return mp.INFECTED

