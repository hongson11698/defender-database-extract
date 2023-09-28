-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!CeeInjectF\Unknowcategory\0x00000058_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size <= 8192 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[3]).RVA), 28)
if (mp.readu_u32)(l_0_0, 1) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 5) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 9) ~= 4 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 13) ~= 196608 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 17) ~= 3 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 21) ~= 2147483688 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 25) ~= 10 then
  return mp.CLEAN
end
local l_0_1 = (mp.readfile)(doshdr.e_lfanew + pehdr.SizeOfOptionalHeader + 24 + 80, 40)
local l_0_2 = (mp.readfile)((mp.readu_u32)(l_0_1, 21), 112)
if (mp.readu_u32)(l_0_2, 1) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_2, 5) ~= 4096 then
  return mp.CLEAN
end
if (mp.crc32)(-1, l_0_2, 1, 112) ~= 3263093114 then
  return mp.CLEAN
end
return mp.INFECTED

