-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008027_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["cttunesvr.exe"] = true
l_0_0["inetmgr.exe"] = true
l_0_0["migsetup.exe"] = true
l_0_0["mmc.exe"] = true
l_0_0["oobe.exe"] = true
l_0_0["pkgmgr.exe"] = true
l_0_0["provisionshare.exe"] = true
l_0_0["provisionstorage.exe"] = true
l_0_0["spinstall.exe"] = true
l_0_0["winsat.exe"] = true
if (this_sigattrlog[4]).matched and l_0_0[(string.match)(((this_sigattrlog[4]).p2):lower(), "\\(%w+%.%w+)$")] then
  return mp.INFECTED
end
if (this_sigattrlog[1]).matched and (l_0_0[(string.match)(((this_sigattrlog[1]).p1):lower(), "\\(%w+%.%w+)$")] or l_0_0[(string.match)(((this_sigattrlog[1]).p2):lower(), "\\(%w+%.%w+)$")]) then
  return mp.INFECTED
end
if (this_sigattrlog[2]).matched and l_0_0[(string.match)(((this_sigattrlog[2]).p1):lower(), "\\(%w+%.%w+)$")] then
  return mp.INFECTED
end
if (this_sigattrlog[3]).matched and l_0_0[(string.match)(((this_sigattrlog[3]).p2):lower(), "\\(%w+%.%w+)$")] then
  return mp.INFECTED
end
return mp.LOWFI

