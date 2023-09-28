-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006433_luac 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (pesecs[2]).Name == ".sdata" and (mp.getfilesize)() > 153600 and (mp.getfilesize)() < 300000 then
  return mp.INFECTED
end
return mp.CLEAN

