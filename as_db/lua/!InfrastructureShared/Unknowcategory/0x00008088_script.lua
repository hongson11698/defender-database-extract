-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008088_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable ~= true then
  return mp.CLEAN
end
if peattributes.epscn_islast ~= true then
  return mp.CLEAN
end
if peattributes.hasappendeddata ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA == 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).Size == 0 then
  return mp.CLEAN
end
if peattributes.epscn_writable == false then
  return mp.CLEAN
end
if peattributes.packed ~= false then
  return mp.CLEAN
end
if peattributes.isdll ~= false then
  return mp.CLEAN
end
if peattributes.hasexports ~= false then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 2 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 0 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).NameDW ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

