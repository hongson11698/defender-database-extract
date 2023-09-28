-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\130d78a3a2d50\0x000081e1_luac 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = (mp.GetParentProcInfo)()
do
  if l_0_1 then
    local l_0_2 = (string.lower)(l_0_1.image_path)
    if (string.find)(l_0_2, "\\programdata\\microsoft\\azurewatson\\0\\awdumpifeo.exe", 1, true) or (string.find)(l_0_2, "\\windows\\system32\\werfault.exe", 1, true) or (string.find)(l_0_2, "\\windows\\syswow64\\werfault.exe", 1, true) then
      return mp.CLEAN
    end
  end
  if (hstrlog[4]).matched or (hstrlog[5]).matched then
    l_0_0 = true
  end
  if not l_0_0 and ((hstrlog[6]).matched or (hstrlog[7]).matched) then
    local l_0_3 = (mp.GetScannedPPID)()
    if not l_0_3 then
      return mp.CLEAN
    end
    local l_0_4 = (mp.GetProcessCommandLine)(l_0_3)
    if not l_0_4 or #l_0_4 <= 18 then
      return mp.CLEAN
    end
    l_0_4 = (string.lower)(l_0_4)
    local l_0_5 = (string.match)(l_0_4, "[%-/]m[acdkmp] \"?([%d]+)\"?")
    if not l_0_5 then
      return mp.CLEAN
    end
    l_0_5 = tonumber(l_0_5)
    local l_0_6 = (mp.GetPPidFromPid)(l_0_5)
    local l_0_7 = (MpCommon.GetImagePathFromPid)(l_0_6)
    if not l_0_7 then
      return mp.CLEAN
    end
    if (string.find)(l_0_7:lower(), "\\local\\microsoft\\onedrive\\onedrive.exe", 1, true) then
      l_0_0 = true
    end
  end
  do
    if l_0_0 then
      TrackPidAndTechnique("CMDHSTR", "T1003.001", "credentialdumping", 86400)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

