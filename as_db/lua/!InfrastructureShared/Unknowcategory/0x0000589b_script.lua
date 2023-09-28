-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000589b_luac 

-- params : ...
-- function num : 0
if peattributes.isdll == false and peattributes.no_security == true and (mp.getfilesize)() < 1508416 then
  return mp.INFECTED
end
return mp.CLEAN

