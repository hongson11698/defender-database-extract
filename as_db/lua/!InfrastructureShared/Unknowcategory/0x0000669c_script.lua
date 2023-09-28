-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000669c_luac 

-- params : ...
-- function num : 0
if pevars.epsec == 1 and pehdr.NumberOfSections == 3 and (mp.readu_u32)(headerpage, 769) == 1702061426 then
  return mp.INFECTED
end
return mp.CLEAN

