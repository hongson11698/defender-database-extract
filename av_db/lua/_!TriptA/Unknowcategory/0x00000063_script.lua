-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!TriptA\Unknowcategory\0x00000063_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.hasappendeddata ~= true then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3953) ~= 2180161454 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3957) ~= 2941643785 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3961) ~= 1532046289 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3965) ~= 3147297591 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3969) ~= 2014732855 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3973) ~= 1064667058 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3977) ~= 3775910057 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3981) ~= 4166935470 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3985) ~= 2870896119 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3989) ~= 3278197780 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3993) ~= 2887294831 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 3997) ~= 1130297941 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 4001) ~= 1839838502 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 4005) ~= 744854410 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 4009) ~= 2696452061 then
  return mp.CLEAN
end
if (mp.readu_u32)(footerpage, 4013) ~= 1628586320 then
  return mp.CLEAN
end
return mp.INFECTED

