-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d9a_luac 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if epcode[1] ~= 80 then
  return mp.CLEAN
end
if epcode[2] ~= 235 then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pehdr.ImageBase ~= 268435456 then
  return mp.CLEAN
end
if peattributes.hasexports ~= false then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).Size == 0 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

