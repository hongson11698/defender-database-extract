-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000079aa_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 ~= nil then
  local l_0_2 = (string.lower)(l_0_1.image_path)
  local l_0_3 = ((string.sub)(l_0_2, -15)):match("\\([^\\]+)$")
  local l_0_4 = {}
  l_0_4["winword.exe"] = true
  l_0_4["excel.exe"] = true
  l_0_4["powerpnt.exe"] = true
  l_0_4["outlook.exe"] = true
  if l_0_4[l_0_3] then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

