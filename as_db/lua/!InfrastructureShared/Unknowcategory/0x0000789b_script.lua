-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000789b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = "svchost.exe|taskeng.exe|taskhostw.exe"
  if l_0_2 ~= nil and (string.find)(l_0_3, l_0_2) then
    (mp.TriggerScanResource)("folder", "C:\\Windows\\System32\\Tasks\\")
    return mp.INFECTED
  end
end
do
  return mp.LOWFI
end

