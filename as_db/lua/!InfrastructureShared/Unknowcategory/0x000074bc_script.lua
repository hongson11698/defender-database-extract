-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000074bc_luac 

-- params : ...
-- function num : 0
if peattributes.isvbnative and peattributes.no_security and (mp.getfilesize)() < 1111040 and pehdr.NumberOfSections == 3 and ((pesecs[3]).VirtualSize == 31486 or (pesecs[3]).VirtualSize == 31494) then
  return mp.INFECTED
end
return mp.CLEAN

