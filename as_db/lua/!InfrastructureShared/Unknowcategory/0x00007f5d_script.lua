-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f5d_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).NameDW ~= 0 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 0 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 1633968430 then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 5 then
  return mp.CLEAN
end
if pehdr.NumberOfSections >= 10 then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pehdr.SizeOfCode <= 163840 then
  return mp.CLEAN
end
if pehdr.SizeOfCode >= 217088 then
  return mp.CLEAN
end
if epcode[1] ~= 104 then
  return mp.CLEAN
end
if epcode[6] ~= 232 then
  return mp.CLEAN
end
return mp.INFECTED

