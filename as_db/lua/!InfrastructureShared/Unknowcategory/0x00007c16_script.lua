-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c16_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 then
  if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\chrome\\application\\chrome.exe", 1, true) or (string.find)(l_0_0, "\\kodi\\kodi.exe", 1, true) or (string.find)(l_0_0, "\\apache\\bin\\httpd.exe", 1, true) or (string.find)(l_0_0, "\\microsoftedgecp.exe", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

