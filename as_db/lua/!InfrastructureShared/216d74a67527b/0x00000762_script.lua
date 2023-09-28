-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\216d74a67527b\0x00000762_luac 

-- params : ...
-- function num : 0
local l_0_0 = GetRealPidForScenario("CMDHSTR")
if IsPidExcluded(l_0_0) then
  return mp.CLEAN
end
local l_0_1 = (mp.GetParentProcInfo)()
do
  if l_0_1 ~= nil then
    local l_0_2 = (string.lower)(l_0_1.image_path)
    if #l_0_2 > 54 and l_0_2:find("microsoft.office.datacenter.torus.powershellworker.exe$") then
      return mp.CLEAN
    end
  end
  local l_0_3 = (sysio.GetFileLastWriteTime)(l_0_1.image_path) / 10000000 - 11644473600
  local l_0_4 = (MpCommon.GetCurrentTimeT)()
  if l_0_4 - l_0_3 < 172800 and not (mp.IsKnownFriendlyFile)(l_0_1.image_path, false, false) then
    return mp.INFECTED
  end
  local l_0_5 = (mp.GetParentProcInfo)(l_0_1.ppid)
  if l_0_4 - ((sysio.GetFileLastWriteTime)(l_0_5.image_path) / 10000000 - 11644473600) < 172800 and not (mp.IsKnownFriendlyFile)(l_0_5.image_path, false, false) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

