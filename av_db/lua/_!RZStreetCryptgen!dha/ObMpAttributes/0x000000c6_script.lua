-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!RZStreetCryptgen!dha\ObMpAttributes\0x000000c6_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 4096 then
  return mp.CLEAN
end
local l_0_0 = (mp.readu_u32)(headerpage, 1)
local l_0_1 = (mp.readu_u32)(headerpage, 5)
if l_0_0 == 0 or l_0_1 == 0 then
  return mp.CLEAN
end
local l_0_2 = (tostring(headerpage)):find("\000", 1, true)
if l_0_2 == nil or l_0_2 < 9 or l_0_2 > 256 then
  return mp.CLEAN
end
if (mp.bitxor)(l_0_0, (mp.readu_u32)(headerpage, l_0_2 + 1)) ~= 15227469 then
  return mp.CLEAN
end
if (mp.bitxor)(l_0_1, (mp.readu_u32)(headerpage, l_0_2 + 5)) ~= 1526726656 then
  return mp.CLEAN
end
return mp.INFECTED

