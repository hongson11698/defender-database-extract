-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006403_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 774000 and l_0_0 <= 800000 and pehdr.NumberOfSections <= 9 and (pesecs[2]).Name == ".itext" then
  return mp.INFECTED
end
return mp.CLEAN

