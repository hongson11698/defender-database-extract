-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b07_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p1)
if (string.find)(l_0_0, "rdpclip.exe", 1, true) or (string.find)(l_0_0, "tsprintlogin.exe", 1, true) or (string.find)(l_0_0, "tsscanlist.exe", 1, true) or (string.find)(l_0_0, "uplaunch.exe", 1, true) or (string.find)(l_0_0, "svchost.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

