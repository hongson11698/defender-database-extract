-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\PUAWin32RaccoonWifi\ObMpAttributes\0x0000002e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = l_0_0.ProductName
if l_0_1 and (string.find)(l_0_1, "小浣熊WiFi", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

