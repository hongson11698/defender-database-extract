-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073e4_luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p1 ~= nil then
  l_0_0 = (MpCommon.PathToWin32Path)((string.lower)((this_sigattrlog[10]).utf8p1))
end
if (mp.IsKnownFriendlyFile)(l_0_0, true, false) then
  return mp.CLEAN
end
return mp.INFECTED

