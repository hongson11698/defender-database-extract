-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!#PUABlockPCAppStore\ObMpAttributes\0x00000031_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = l_0_0.ProductName
if l_0_1 then
  l_0_1 = (string.lower)(l_0_1)
  if (string.find)(l_0_1, "appstore", 1, true) or (string.find)(l_0_1, "app store", 1, true) or (string.find)(l_0_1, "application store", 1, true) or (string.find)(l_0_1, "?pp store", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN

