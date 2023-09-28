-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007dd3_luac 

-- params : ...
-- function num : 0
if peattributes.no_relocs ~= true then
  return mp.CLEAN
end
if peattributes.epscn_writable ~= true then
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
if peattributes.headerchecksum0 ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA ~= 0 then
  return mp.CLEAN
end
if pehdr.BaseOfCode ~= 4096 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 2 then
  return mp.CLEAN
end
return mp.INFECTED

