-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Jenxcus\Unknowcategory\0x00000074_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("TARG:Worm:VBS/Jenxcus!Crypt1") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 110000 or l_0_0 > 500000 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
l_0_1 = (string.lower)(l_0_1)
local l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7 = l_0_1:match("\'execute%(%p%((%d%d%d?%d?)%-%s(%d%d%d?%d?)%)%s&%s%p%((%d%d%d?%d?)%-%s(%d%d%d?%d?)%)%s&%s%p%((%d%d%d?%d?)%-%s(%d%d%d?%d?)%)")
if l_0_2 == nil then
  return mp.CLEAN
end
if l_0_3 == nil then
  return mp.CLEAN
end
if l_0_4 == nil then
  return mp.CLEAN
end
if l_0_5 == nil then
  return mp.CLEAN
end
if l_0_6 == nil then
  return mp.CLEAN
end
if l_0_7 == nil then
  return mp.CLEAN
end
local l_0_8 = l_0_2 - l_0_3
if (string.char)(l_0_8) ~= "\'" and (string.char)(l_0_8) ~= "\r" then
  return mp.CLEAN
end
l_0_8 = l_0_4 - l_0_5
if (string.char)(l_0_8) ~= "=" and (string.char)(l_0_8) ~= "<" and (string.char)(l_0_8) ~= "\n" then
  return mp.CLEAN
end
l_0_8 = l_0_6 - l_0_7
if (string.char)(l_0_8) ~= "-" and (string.char)(l_0_8) ~= "[" and (string.char)(l_0_8) ~= "h" then
  return mp.CLEAN
end
return mp.INFECTED

