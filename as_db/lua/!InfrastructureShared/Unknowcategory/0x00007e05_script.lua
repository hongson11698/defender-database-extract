-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e05_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((bm.get_imagepath)(), -20))
if (string.find)(l_0_0, "\\iexplore.exe", 8, true) or (string.find)(l_0_0, "\\chrome.exe", 10, true) or (string.find)(l_0_0, "\\browser_broker.exe", 2, true) or (string.find)(l_0_0, "\\microsoftedge.exe", 3, true) or (string.find)(l_0_0, "\\microsoftedgecp.exe", 1, true) or (string.find)(l_0_0, "\\firefox.exe", 9, true) then
  return mp.INFECTED
end
return mp.CLEAN

