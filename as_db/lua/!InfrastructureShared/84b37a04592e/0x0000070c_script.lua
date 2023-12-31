-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b37a04592e\0x0000070c_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["httpd.exe"] = true
l_0_0["tomcat.exe"] = true
l_0_0["nginx.exe"] = true
local l_0_1, l_0_2 = nil, nil
if (this_sigattrlog[1]).matched then
  l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p1)
end
if (this_sigattrlog[2]).matched then
  l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p1)
end
if (this_sigattrlog[3]).matched then
  l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p1)
end
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_2 = l_0_1:match("(%w+%.exe)$")
local l_0_3 = GetRollingQueueKeyValue("app_version_" .. l_0_2, l_0_1)
if l_0_3 ~= nil then
  return mp.CLEAN
end
local l_0_4, l_0_5, l_0_6 = Get_file_version(l_0_1)
if not l_0_0[(string.lower)(l_0_6)] then
  return mp.CLEAN
end
local l_0_7 = "app_version_" .. l_0_6
local l_0_8 = 31536000
local l_0_9 = 50
if l_0_4 ~= nil then
  local l_0_10 = Version_to_str(l_0_4)
  AppendToRollingQueue(l_0_7, l_0_1, l_0_10, l_0_8, l_0_9)
  ;
  (bm.add_related_string)("AppVersionFixed", l_0_10, bm.RelatedStringBMReport)
else
  do
    if l_0_5 ~= nil then
      AppendToRollingQueue(l_0_7, l_0_1, l_0_5, l_0_8, l_0_9)
    end
    ;
    (bm.add_related_string)("AppVersionStr", l_0_5, bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end

