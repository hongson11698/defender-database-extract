-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000930_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[4]).utf8p1
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = (bm.get_current_process_startup_info)()
if not l_0_1 or l_0_1.integrity_level == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.CLEAN
end
l_0_0 = l_0_0:lower()
if (this_sigattrlog[1]).matched and (l_0_0:find("__psscriptpolicytest_[^\\]*%.ps1") or l_0_0:find("[^%.]+%.[^%.]+%.ps1$")) then
  return mp.CLEAN
end
if l_0_0:find("\\amazon\\elasticbeanstalk\\", 1, true) then
  return mp.CLEAN
end
if not (mp.IsKnownFriendlyFile)(l_0_0, false, false) then
  local l_0_2 = (string.match)(l_0_0, "(%.[^%.]+)$")
  if not l_0_2 then
    return mp.INFECTED
  end
  local l_0_3 = {}
  l_0_3[".dat"] = true
  l_0_3[".pif"] = true
  l_0_3[".js"] = true
  l_0_3[".jse"] = true
  l_0_3[".ps1"] = true
  l_0_3[".vbs"] = true
  l_0_3[".vbe"] = true
  l_0_3[".hta"] = true
  l_0_3[".wsf"] = true
  l_0_3[".cmd"] = true
  l_0_3[".bat"] = true
  if l_0_3[l_0_2] then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

