-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ProcesemesA\Unknowcategory\0x00000052_luac 

-- params : ...
-- function num : 0
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData <= 172032 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData >= 286720 then
  return mp.CLEAN
end
if pehdr.SizeOfCode < 32768 then
  return mp.CLEAN
end
if pehdr.SizeOfCode > 45056 then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if peattributes.headerchecksum0 ~= true then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[7]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[7]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).Size ~= 0 then
  return mp.CLEAN
end
if pehdr.Characteristics ~= 259 then
  return mp.CLEAN
end
if pehdr.MajorLinkerVersion ~= 8 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 1920168494 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)((pesecs[pehdr.NumberOfSections]).VirtualAddress + 352), 12)
if (mp.crc32)(-1, l_0_0, 1, 12) ~= 3791807996 then
  return mp.CLEAN
end
return mp.INFECTED

