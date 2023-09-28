-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!PanPalsConfiggen!dha\ObMpAttributes\0x000000c4_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 528 then
  return mp.CLEAN
end
local l_0_0 = (mp.readu_u32)(headerpage, 1)
local l_0_1 = (mp.readu_u32)(headerpage, 521)
local l_0_2 = (mp.readu_u32)(headerpage, 525)
local l_0_3 = (mp.getfilesize)()
if l_0_0 == 0 or l_0_2 == 0 then
  return mp.CLEAN
end
if l_0_0 ~= l_0_2 then
  return mp.CLEAN
end
if l_0_3 < l_0_1 or l_0_3 < l_0_2 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 5) ~= 0 then
  return mp.CLEAN
end
if (mp.bitxor)((mp.readu_u32)(headerpage, 513), 4227529208) ~= 0 then
  return mp.CLEAN
end
if (mp.bitxor)((mp.readu_u32)(headerpage, 517), 4294901244) ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

