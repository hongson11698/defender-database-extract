-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000072e1_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 9 then
  return mp.CLEAN
end
if pehdr.SizeOfImage ~= 94208 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if (pesecs[1]).Characteristics ~= 1610612768 then
  return mp.CLEAN
end
return mp.INFECTED

