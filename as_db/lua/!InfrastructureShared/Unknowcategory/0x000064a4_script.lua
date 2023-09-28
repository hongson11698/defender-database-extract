-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000064a4_luac 

-- params : ...
-- function num : 0
if pevars.epsec ~= 1 and pehdr.NumberOfSections == 10 and (pesecs[1]).NameDW == 1701995822 then
  return mp.INFECTED
end
return mp.CLEAN

