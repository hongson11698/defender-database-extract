-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f1f_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if pehdr.SizeOfImage < 106496 then
  return mp.CLEAN
end
if pehdr.SizeOfImage > 131072 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).VirtualSize < 20992 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).VirtualSize > 23040 then
  return mp.CLEAN
end
if pehdr.AddressOfEntryPoint < 5888 then
  return mp.CLEAN
end
if pehdr.AddressOfEntryPoint > 6144 then
  return mp.CLEAN
end
return mp.INFECTED

