-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008285_luac 

-- params : ...
-- function num : 0
if peattributes.no_relocs ~= true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if peattributes.packed == true then
  return mp.CLEAN
end
if peattributes.packersigmatched == true then
  return mp.CLEAN
end
if peattributes.headerchecksum0 ~= true then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if peattributes.epatstartlastsect ~= false then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if pehdr.SizeOfCode < 8192 then
  return mp.CLEAN
end
if pehdr.SizeOfCode > 65536 then
  return mp.CLEAN
end
if peattributes.is_delphi ~= false then
  return mp.CLEAN
end
if peattributes.hasappendeddata ~= false then
  return mp.CLEAN
end
if pehdr.BaseOfCode ~= 4096 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData < 2048 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData > 65536 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 4 then
  return mp.CLEAN
end
if pehdr.NumberOfSections > 10 then
  return mp.CLEAN
end
if pehdr.Subsystem ~= 2 then
  return mp.CLEAN
end
if pehdr.FileAlignment ~= 512 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[12]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[12]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).RVA <= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).Size < 24 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[10]).RVA), 24)
if (mp.readu_u32)(l_0_0, 1) <= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 5) <= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 9) <= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 13) <= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 17) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 21) ~= 0 then
  return mp.CLEAN
end
local l_0_1 = (mp.readfile)((pe.foffset_rva)((mp.readu_u32)(l_0_0, 9) - pehdr.ImageBase), 16)
local l_0_2 = l_0_0 .. l_0_1
if (mp.readu_u32)(l_0_2, 1) <= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_2, 25) ~= 4294967295 then
  return mp.CLEAN
end
return mp.INFECTED

