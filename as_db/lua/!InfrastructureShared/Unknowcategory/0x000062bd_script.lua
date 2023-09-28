-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000062bd_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 3 and peattributes.epinfirstsect and (pesecs[pehdr.NumberOfSections]).Name == ".rsrc" then
  return mp.INFECTED
end
return mp.CLEAN

