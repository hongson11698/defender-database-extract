-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ObfuscatorSA\ObMpAttributes\0x00000077_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 80000 or l_0_0 > 700000 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
l_0_1 = (string.lower)(l_0_1)
local l_0_2, l_0_3 = l_0_1:match("%s=%s\"%d%d%d?(...-)%d%d%d?(...-)%d%d%d?")
if l_0_2 == nil then
  return mp.CLEAN
end
if l_0_3 == nil then
  return mp.CLEAN
end
if l_0_2 ~= l_0_3 then
  return mp.CLEAN
end
return mp.SUSPICIOUS

