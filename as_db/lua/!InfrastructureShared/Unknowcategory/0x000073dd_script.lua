-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073dd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 520192 and l_0_0 <= 589824 and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 5 and (pesecs[2]).Name == ".jnbcf" then
  return mp.INFECTED
end
return mp.CLEAN

