-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ObfuscatorSD\Unknowcategory\0x00000079_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("TARG:Worm:VBS/Jenxcus!Crypt5") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 100000 or l_0_0 > 500000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, 8192)
l_0_1 = (string.lower)(l_0_1)
local l_0_2, l_0_3 = l_0_1:match("dim%s%l-%s-for%seach%s(%l-)%sin%s%l-%s-if%s(%l-).name%s=")
if l_0_2 == nil then
  return mp.CLEAN
end
if l_0_3 == nil then
  return mp.CLEAN
end
if l_0_2 ~= l_0_3 then
  return mp.CLEAN
end
local l_0_4 = tostring(footerpage)
l_0_4 = (string.lower)(l_0_4)
local l_0_5 = l_0_4:match("dim%s%l-%s-(%l-)%s=%s%l-%(%l-%)")
if l_0_5 == nil then
  return mp.CLEAN
end
local l_0_6 = l_0_4:match("executeglobal%((%l-)%)")
if l_0_6 == nil then
  return mp.CLEAN
end
if l_0_5 ~= l_0_6 then
  return mp.CLEAN
end
return mp.SUSPICIOUS

