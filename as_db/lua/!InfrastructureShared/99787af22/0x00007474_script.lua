-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\99787af22\0x00007474_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil or l_0_0.InternalName == nil or l_0_0.CompanyName == nil then
  return mp.LOWFI
end
if (string.find)(l_0_0.InternalName, "CMClient.exe", 1, true) and (string.find)(l_0_0.InternalName, "netbar\'s maintenance") == nil then
  return mp.INFECTED
end
return mp.LOWFI

