-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006699_luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.no_security == true and pehdr.NumberOfSections == 7 and (mp.getfilesize)() > 716800 and (mp.getfilesize)() < 1024000 then
  return mp.INFECTED
end
return mp.CLEAN

