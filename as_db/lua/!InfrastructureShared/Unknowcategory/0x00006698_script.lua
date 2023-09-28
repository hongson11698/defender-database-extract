-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006698_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 14 and peattributes.isexe == true and pehdr.AddressOfEntryPoint == 435072 and (pesecs[4]).Name == "/4" then
  return mp.INFECTED
end
return mp.CLEAN

