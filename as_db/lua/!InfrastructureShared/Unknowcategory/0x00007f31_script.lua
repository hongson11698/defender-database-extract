-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f31_luac 

-- params : ...
-- function num : 0
if peattributes.epscn_writable == false then
  return mp.CLEAN
end
if peattributes.firstsectwritable ~= true then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).NameDW ~= 1952539694 then
  return mp.CLEAN
end
if epcode[1] ~= 96 then
  return mp.CLEAN
end
if epcode[2] ~= 190 then
  return mp.CLEAN
end
if epcode[7] ~= 233 then
  return mp.CLEAN
end
return mp.INFECTED

