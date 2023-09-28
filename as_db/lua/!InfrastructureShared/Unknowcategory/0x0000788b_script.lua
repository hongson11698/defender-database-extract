-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000788b_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)())))
local l_0_1 = nil
if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p1 ~= nil then
  l_0_1 = ((this_sigattrlog[6]).utf8p1):lower()
end
if (string.match)(l_0_1, "(.*\\)") == (string.match)(l_0_0, "(.*\\)") then
  return mp.INFECTED
end
return mp.CLEAN

