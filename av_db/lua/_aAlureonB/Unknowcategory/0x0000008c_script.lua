-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_aAlureonB\Unknowcategory\0x0000008c_luac 

-- params : ...
-- function num : 0
if (pesecs[pehdr.NumberOfSections]).VirtualAddress ~= 28672 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize ~= 4096 then
  return mp.CLEAN
end
if pehdr.SizeOfCode ~= 11264 then
  return mp.CLEAN
end
if pehdr.SizeOfImage ~= 32768 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).Size ~= 40 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).Size ~= 16 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size ~= 4096 then
  return mp.CLEAN
end
if pehdr.Subsystem ~= 1 then
  return mp.CLEAN
end
if pehdr.Characteristics ~= 8450 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[7]).Size ~= 0 then
  return mp.CLEAN
end
if (pesecs[1]).VirtualAddress ~= 4096 then
  return mp.CLEAN
end
if (pesecs[1]).VirtualSize ~= 16384 then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if peattributes.packed == true then
  return mp.CLEAN
end
if pehdr.MajorLinkerVersion ~= 8 then
  return mp.CLEAN
end
if pehdr.MinorLinkerVersion ~= 0 then
  return mp.CLEAN
end
if pehdr.SizeOfHeaders ~= 512 then
  return mp.CLEAN
end
if pehdr.MajorSubsystemVersion ~= 4 then
  return mp.CLEAN
end
if pehdr.DllCharacteristics ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

