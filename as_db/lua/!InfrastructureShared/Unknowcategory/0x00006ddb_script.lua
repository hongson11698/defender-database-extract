-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006ddb_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections > 3 and (pesecs[2]).VirtualSize > 336 and (pesecs[2]).VirtualSize < 432 and (pesecs[3]).VirtualSize >= 13354 and (pesecs[3]).VirtualSize <= 13356 then
  return mp.INFECTED
end
return mp.CLEAN

