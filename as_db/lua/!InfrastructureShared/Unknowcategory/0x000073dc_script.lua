-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073dc_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 172032 and l_0_0 <= 184320 and pehdr.NumberOfSections >= 5 and pehdr.NumberOfSections <= 7 and (pesecs[3]).Name == "EJf-ov" then
  return mp.INFECTED
end
return mp.CLEAN

