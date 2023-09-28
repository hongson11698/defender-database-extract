-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000642c_luac 

-- params : ...
-- function num : 0
if (pesecs[pehdr.NumberOfSections]).NameDW == 1163217994 and peattributes.epscn_islast == true then
  return mp.INFECTED
end
;
(mp.changedetectionname)(805306404)
return mp.INFECTED

