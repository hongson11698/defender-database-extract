-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007de9_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections >= 4 and ((pesecs[4]).Name == ".Lax503" or (pesecs[3]).Name == ".Lax503" or (pesecs[2]).Name == ".On59" or (pesecs[3]).Name == ".On59" or (pesecs[3]).Name == ".Zek" or (pesecs[2]).Name == ".Reel" or (pesecs[3]).Name == ".Obis" or (pesecs[3]).Name == ".mon887" or (pesecs[3]).Name == ".Much" or (pesecs[3]).Name == ".oypac" or (pesecs[4]).Name == ".jibmed" or (pesecs[4]).Name == ".Much" or (pesecs[2]).Name == ".Waeson" or mp.HSTR_WEIGHT >= 2) then
  return mp.INFECTED
end
return mp.CLEAN

