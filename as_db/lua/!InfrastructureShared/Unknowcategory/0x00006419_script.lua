-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006419_luac 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.hasexports and peattributes.no_security and (mp.getfilesize)() >= 65535 and (mp.getfilesize)() <= 1048575 then
  return mp.INFECTED
end
return mp.CLEAN

