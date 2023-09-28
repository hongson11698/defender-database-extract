-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000ca2_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections >= 10 and (pesecs[6]).Name == ".driver" and (pesecs[7]).NameDW == 1734763310 and ((pesecs[8]).NameDW == 1667331374 or (pesecs[10]).NameDW == 1667331374) then
  return mp.INFECTED
end
return mp.CLEAN

