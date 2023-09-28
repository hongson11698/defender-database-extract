-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b64_luac 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.headerchecksum0 ~= true then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData > 36864 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 3 then
  return mp.CLEAN
end
if pehdr.NumberOfSections > 5 then
  return mp.CLEAN
end
if pehdr.SizeOfImage < 94208 then
  return mp.CLEAN
end
if pehdr.SizeOfImage > 131072 then
  return mp.CLEAN
end
return mp.INFECTED
