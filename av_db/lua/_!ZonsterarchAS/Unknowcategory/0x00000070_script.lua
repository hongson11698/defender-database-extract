-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ZonsterarchAS\Unknowcategory\0x00000070_luac 

-- params : ...
-- function num : 0
if peattributes.hasappendeddata ~= true then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData
local l_0_1 = (mp.getfilesize)()
if l_0_0 < l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (mp.readfile)(l_0_0, 76)
local l_0_3 = (mp.crc32)(-1, l_0_2, 1, 11)
if l_0_3 ~= 1339394596 then
  return mp.CLEAN
end
;
(mp.writeu_u8)(l_0_2, 25, l_0_2:byte(26))
;
(mp.writeu_u8)(l_0_2, 27, l_0_2:byte(26))
;
(mp.writeu_u8)(l_0_2, 28, l_0_2:byte(26))
if (mp.bitxor)((mp.readu_u32)(l_0_2, 25), (mp.readu_u32)(l_0_2, 45)) ~= 1918975008 then
  return mp.CLEAN
end
if (mp.bitxor)((mp.readu_u32)(l_0_2, 25), (mp.readu_u32)(l_0_2, 49)) ~= 1986619491 then
  return mp.CLEAN
end
if (mp.bitxor)((mp.readu_u32)(l_0_2, 25), (mp.readu_u32)(l_0_2, 53)) ~= 1701076837 then
  return mp.CLEAN
end
return mp.INFECTED

