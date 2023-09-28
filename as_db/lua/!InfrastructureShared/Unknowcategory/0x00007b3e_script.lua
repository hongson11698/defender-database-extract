-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b3e_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).RVA == 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).Size == 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[13]).RVA == 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[13]).Size == 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA ~= 36864 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size <= 65536 then
  return mp.CLEAN
end
return mp.INFECTED

