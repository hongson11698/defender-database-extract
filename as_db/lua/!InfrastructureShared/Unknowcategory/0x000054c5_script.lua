-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000054c5_luac 

-- params : ...
-- function num : 0
if (peattributes.isvbpcode == true or peattributes.isvbnative == true) and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

