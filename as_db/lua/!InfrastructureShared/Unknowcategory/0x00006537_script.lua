-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006537_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("NID:Win64/DarkRat.PA") and peattributes.no_security == true and (mp.getfilesize)() >= 230000 and (mp.getfilesize)() <= 260000 then
  return mp.INFECTED
end
return mp.CLEAN

