-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c48_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if (string.sub)(l_0_1, 1, 7) == "msiexec" then
  local l_0_2 = (mp.GetParentProcInfo)()
  if l_0_2 ~= nil then
    local l_0_3 = (string.lower)(l_0_2.image_path)
    local l_0_4 = ((string.sub)(l_0_3, -15)):match("\\([^\\]+)$")
    local l_0_5 = {}
    l_0_5["svchost.exe"] = true
    l_0_5["taskeng.exe"] = true
    l_0_5["taskhostw.exe"] = true
    if l_0_5[l_0_4] then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

