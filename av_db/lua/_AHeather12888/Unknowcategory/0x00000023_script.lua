-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_AHeather12888\Unknowcategory\0x00000023_luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)(epcode, 21) ~= 1952539976 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 25) ~= 778986856 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 29) ~= 7103606 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 1) ~= 26720 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 13) ~= 24848 then
  return mp.CLEAN
end
if epcode[15] ~= 104 then
  return mp.CLEAN
end
if epcode[12] ~= 255 then
  return mp.CLEAN
end
if epcode[20] ~= 195 then
  return mp.CLEAN
end
return mp.INFECTED

