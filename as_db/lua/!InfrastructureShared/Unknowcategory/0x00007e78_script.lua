-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e78_luac 

-- params : ...
-- function num : 0
if epcode[1] ~= 77 then
  return mp.CLEAN
end
if epcode[2] ~= 90 then
  return mp.CLEAN
end
if epcode[5] ~= 233 then
  return mp.CLEAN
end
if epcode[8] ~= 0 then
  return mp.CLEAN
end
if epcode[9] ~= 0 then
  return mp.CLEAN
end
if pehdr.AddressOfEntryPoint ~= 0 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 1162104643 then
  return mp.CLEAN
end
if (pesecs[1]).VirtualAddress ~= 4096 then
  return mp.CLEAN
end
if peattributes.epscn_islast ~= false then
  return mp.CLEAN
end
if peattributes.epinfirstsect == true then
  return mp.CLEAN
end
return mp.INFECTED

