-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaMiuref_DLL\0x00000fa9_luac 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.hasexports ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 6 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections - 1]).Characteristics ~= 3758096448 then
  return mp.CLEAN
end
local l_0_0 = ((pehdr.DataDirectory)[1]).RVA
local l_0_1 = ((pehdr.DataDirectory)[2]).Size
if (mp.getfilesize)() > 1324032 then
  return mp.CLEAN
end
if (mp.getfilesize)() < 1142784 then
  return mp.CLEAN
end
if (pe.contains_rva)(5, l_0_0) ~= true then
  return mp.CLEAN
end
if l_0_1 ~= 149 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:Miuref_DLL")
return mp.CLEAN

