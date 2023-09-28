-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!SemisoftF\Unknowcategory\0x00000005_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData ~= 40448 then
  return mp.CLEAN
end
if pehdr.AddressOfEntryPoint ~= 19968 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[pevars.epsec]).PointerToRawData + 1600, 1024)
if (mp.crc32)(-1, l_0_0, 1, 1024) ~= 2106590491 then
  return mp.CLEAN
end
return mp.INFECTED

