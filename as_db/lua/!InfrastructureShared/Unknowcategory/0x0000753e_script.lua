-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000753e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.find)(l_0_0, "\\device\\harddiskvolume.\\windows\\system32\\ie4uinit%.exe", 1, false) ~= nil or (string.find)(l_0_0, "\\device\\harddiskvolume.\\windows\\syswow64\\ie4uinit%.exe", 1, false) ~= nil then
  return mp.CLEAN
end
return mp.INFECTED

