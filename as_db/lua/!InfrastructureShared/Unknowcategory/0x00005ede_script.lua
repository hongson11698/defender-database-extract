-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005ede_luac 

-- params : ...
-- function num : 0
if (peattributes.isexe == true or peattributes.isdll == true) and (mp.getfilesize)() < 2097152 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

