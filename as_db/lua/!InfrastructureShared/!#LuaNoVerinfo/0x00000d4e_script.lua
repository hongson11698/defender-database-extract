-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaNoVerinfo\0x00000d4e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  return mp.INFECTED
end
local l_0_1 = l_0_0.CompanyName
if l_0_1 then
  l_0_1 = (string.lower)(l_0_1)
  l_0_1 = l_0_1:gsub(" ", "__")
  ;
  (mp.set_mpattribute)("Lua:PeCompanyName!" .. l_0_1)
else
  ;
  (mp.set_mpattribute)("Lua:PeCompanyName!nil")
end
return mp.CLEAN

