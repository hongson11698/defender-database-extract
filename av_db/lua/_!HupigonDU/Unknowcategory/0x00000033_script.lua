-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!HupigonDU\Unknowcategory\0x00000033_luac 

-- params : ...
-- function num : 0
if pehdr.Characteristics ~= 33166 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA ~= 778240 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).RVA ~= 729088 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(1561, 400)
if (mp.crc32)(-1, l_0_0, 1, 400) ~= 1910764323 then
  return mp.CLEAN
end
return mp.INFECTED

