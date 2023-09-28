-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_QRegswap\Unknowcategory\0x00000022_luac 

-- params : ...
-- function num : 0
if (mp.readu_u16)(epcode, 1) ~= 60545 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 9) ~= 1768 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 85) ~= 1374221685 then
  return mp.CLEAN
end
if (mp.bitand)((mp.readu_u32)(epcode, 93), 49342474) ~= 49342474 then
  return mp.CLEAN
end
if epcode[123] ~= 195 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 193) ~= 4144005181 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 197) ~= 4542655 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 213) ~= 2344613632 then
  return mp.CLEAN
end
return mp.INFECTED

