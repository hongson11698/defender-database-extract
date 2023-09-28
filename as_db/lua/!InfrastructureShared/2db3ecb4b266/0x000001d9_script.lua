-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2db3ecb4b266\0x000001d9_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
  local l_0_0 = "rq_ServiceImagePaths"
  local l_0_1 = (bm.get_imagepath)()
  if l_0_1 == nil then
    return mp.CLEAN
  end
  l_0_1 = (l_0_1:gsub("[.exe$|.sys$]", "")):lower()
  local l_0_2 = GetRollingQueueKeys(l_0_0)
  if l_0_2 == nil or type(l_0_2) ~= "table" then
    return mp.CLEAN
  end
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    if l_0_7:find(l_0_1, 1, true) then
      return mp.INFECTED
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

