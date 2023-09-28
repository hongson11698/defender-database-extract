-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008226_luac 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.packed ~= true then
  return mp.CLEAN
end
if peattributes.hasexports == true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pehdr.SizeOfHeaders ~= 4096 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 5 then
  return mp.CLEAN
end
if pehdr.NumberOfSections > 6 then
  return mp.CLEAN
end
if pehdr.ImageBase ~= 268435456 then
  return mp.CLEAN
end
if pehdr.Subsystem ~= 2 then
  return mp.CLEAN
end
if pehdr.FileAlignment ~= 512 then
  return mp.CLEAN
end
if pehdr.SizeOfStackReserve ~= 1048576 then
  return mp.CLEAN
end
if pehdr.SizeOfCode <= 4096 then
  return mp.CLEAN
end
if pehdr.SizeOfCode >= 524288 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData <= 0 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData >= 524288 then
  return mp.CLEAN
end
local l_0_0 = pehdr.SizeOfCode - (pesecs[pevars.epsec]).SizeOfRawData
if (mp.bitand)(l_0_0, 2147483648) == 2147483648 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).RVA <= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size >= 1536 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[12]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[12]).Size ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

