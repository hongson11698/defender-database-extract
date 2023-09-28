-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!JusabliC\Unknowcategory\0x00000062_luac 

-- params : ...
-- function num : 0
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 1902667822 then
  return mp.CLEAN
end
if peattributes.epscn_islast == true then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[pehdr.NumberOfSections]).PointerToRawData, 208)
if (mp.crc32)(-1, l_0_0, 1, 208) ~= 2967643338 then
  return mp.CLEAN
end
return mp.INFECTED

