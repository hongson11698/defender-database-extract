-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080a0_luac 

-- params : ...
-- function num : 0
if peattributes.epscn_writable ~= true then
  return mp.CLEAN
end
if peattributes.packed ~= false then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size ~= 0 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW == 1920168494 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData ~= 0 then
  return mp.CLEAN
end
if epcode[1] ~= 85 then
  return mp.CLEAN
end
if epcode[2] ~= 137 then
  return mp.CLEAN
end
if epcode[3] ~= 229 then
  return mp.CLEAN
end
return mp.INFECTED

