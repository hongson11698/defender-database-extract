-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f88_luac 

-- params : ...
-- function num : 0
if peattributes.hasexports == true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 4 then
  return mp.CLEAN
end
if peattributes.headerchecksum0 ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA ~= 0 then
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
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 0 then
  return mp.CLEAN
end
if epcode[1] ~= 80 then
  return mp.CLEAN
end
if epcode[2] ~= 235 then
  return mp.CLEAN
end
return mp.INFECTED

