-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006539_luac 

-- params : ...
-- function num : 0
if peattributes.no_security == true and pehdr.NumberOfSections > 3 and pehdr.NumberOfSections < 7 and (pesecs[4]).Name == ".pdata" then
  return mp.INFECTED
end
return mp.LOWFI

