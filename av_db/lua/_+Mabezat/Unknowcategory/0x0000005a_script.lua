-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_+Mabezat\Unknowcategory\0x0000005a_luac 

-- params : ...
-- function num : 0
if (pesecs[1]).VirtualSize ~= 53594 then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData ~= 53760 then
  return mp.CLEAN
end
if (pesecs[1]).PointerToRawData ~= 1024 then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 3 then
  return mp.CLEAN
end
if pehdr.NumberOfSections >= 6 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(54784, 128)
if (mp.crc32)(-1, l_0_0, 1, 128) ~= 2607511169 then
  return mp.CLEAN
end
return mp.INFECTED

