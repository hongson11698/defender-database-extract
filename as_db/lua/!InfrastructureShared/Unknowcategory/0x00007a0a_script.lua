-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a0a_luac 

-- params : ...
-- function num : 0
if ((pehdr.DataDirectory)[2]).RVA ~= 8256 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).Size >= 80 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA ~= 16384 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size <= 98304 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[13]).RVA ~= 8192 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[13]).Size >= 80 then
  return mp.CLEAN
end
return mp.INFECTED

