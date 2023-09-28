-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006df6_luac 

-- params : ...
-- function num : 0
if peattributes.isdriver == false and peattributes.isexe and peattributes.no_security and (mp.getfilesize)() > 1376256 and (mp.getfilesize)() < 5242880 and (pesecs[3]).Name == ".data" then
  return mp.INFECTED
end
return mp.CLEAN

