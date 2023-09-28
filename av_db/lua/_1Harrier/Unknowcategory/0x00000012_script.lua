-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_1Harrier\Unknowcategory\0x00000012_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if peattributes.epscn_islast == false then
  return mp.CLEAN
end
if peattributes.epatscnstart == false then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData <= 94208 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).VirtualSize <= 94208 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[2]).RVA - 490), 256)
if (mp.crc32)(-1, l_0_0, 1, 256) ~= 4123414866 then
  return mp.CLEAN
end
return mp.INFECTED

