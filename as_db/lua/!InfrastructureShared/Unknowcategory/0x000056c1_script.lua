-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000056c1_luac 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.isdll == false and (mp.getfilesize)() < 5048000 then
  return mp.INFECTED
end
return mp.CLEAN
