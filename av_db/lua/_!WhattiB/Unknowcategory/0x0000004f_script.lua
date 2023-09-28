-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!WhattiB\Unknowcategory\0x0000004f_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.hasappendeddata ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).NameDW ~= 827871317 then
  return mp.CLEAN
end
if (mp.getfilesize)() <= 815211 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[pevars.epsec]).PointerToRawData, 18368)
local l_0_1 = (mp.crc32)(-1, l_0_0, 1, 32)
if l_0_1 ~= 3139778117 then
  return mp.CLEAN
end
local l_0_2 = (mp.crc32)(-1, l_0_0, 1, 18368)
if l_0_2 ~= 3677223986 then
  return mp.CLEAN
end
local l_0_3 = (mp.readfile)((pesecs[pehdr.NumberOfSections]).PointerToRawData, 8192)
if (mp.crc32)(-1, l_0_3, 7681, 512) ~= 3870585713 then
  return mp.CLEAN
end
return mp.INFECTED

