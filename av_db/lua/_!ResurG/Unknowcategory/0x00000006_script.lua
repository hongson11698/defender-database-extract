-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ResurG\Unknowcategory\0x00000006_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData ~= 77824 then
  return mp.CLEAN
end
if (mp.bitand)((pesecs[pevars.epsec]).VirtualSize, 73728) ~= 73728 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).Characteristics ~= 1610612768 then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 4 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[pevars.epsec]).PointerToRawData + 256, 256)
if (mp.crc32)(-1, l_0_0, 1, 29) ~= 3571610125 then
  return mp.CLEAN
end
if (mp.crc32)(-1, l_0_0, 96, 16) ~= 1775081905 then
  return mp.CLEAN
end
return mp.INFECTED

