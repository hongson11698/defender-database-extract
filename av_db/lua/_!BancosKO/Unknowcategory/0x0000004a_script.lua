-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!BancosKO\Unknowcategory\0x0000004a_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size <= 0 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 1726 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[pehdr.NumberOfSections]).PointerToRawData + 1166, 560)
if (mp.readu_u16)(l_0_0, 523) ~= 115 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 525) ~= 118 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 527) ~= 104 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 529) ~= 111 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 531) ~= 111 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 533) ~= 116 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 535) ~= 115 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 537) ~= 115 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 539) ~= 46 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 541) ~= 101 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 543) ~= 120 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 545) ~= 101 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 489) ~= 79 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 491) ~= 114 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 493) ~= 105 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 495) ~= 103 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 497) ~= 105 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 499) ~= 110 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 501) ~= 97 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 503) ~= 108 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 505) ~= 70 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 507) ~= 105 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 509) ~= 108 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 511) ~= 101 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 513) ~= 110 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 515) ~= 97 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 517) ~= 109 then
  return mp.CLEAN
end
if (mp.readu_u16)(l_0_0, 519) ~= 101 then
  return mp.CLEAN
end
if (mp.crc32)(-1, l_0_0, 1, 370) ~= 8693852 then
  return mp.CLEAN
end
return mp.INFECTED

