-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f32_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_falign ~= true then
  return mp.CLEAN
end
if peattributes.no_relocs ~= true then
  return mp.CLEAN
end
if peattributes.epscn_writable ~= true then
  return mp.CLEAN
end
if peattributes.firstsectwritable ~= true then
  return mp.CLEAN
end
if peattributes.epscn_islast ~= true then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA ~= 0 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

