-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006610_luac 

-- params : ...
-- function num : 0
if peattributes.isexe and (mp.getfilesize)() >= 589824 and (mp.getfilesize)() <= 917504 and pehdr.NumberOfSections >= 6 and pehdr.NumberOfSections <= 9 then
  return mp.INFECTED
end
return mp.CLEAN

