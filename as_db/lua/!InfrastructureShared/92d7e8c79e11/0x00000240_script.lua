-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\92d7e8c79e11\0x00000240_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["qualysagent.exe"] = true
l_0_0["pulsesecureservice.exe"] = true
l_0_0["911 location manager.exe"] = true
l_0_0["logmein.exe"] = true
l_0_0["fasm.exe"] = true
local l_0_1 = (mp.GetParentProcInfo)()
do
  if l_0_1 ~= nil then
    local l_0_2 = (string.lower)(l_0_1.image_path)
    if l_0_2 ~= nil then
      if l_0_0[l_0_2:match("([^\\]+)$")] or (string.find)(l_0_2, ":\\windows\\assembly\\nativeimages_", 1, true) or (string.find)(l_0_2, ":\\programdata\\ctes\\components\\", 1, true) then
        return mp.CLEAN
      end
      if l_0_2:find("\\relauncher\\.+\\studio%.exe$") or l_0_2:find("\\relauncher\\.+\\launcher%.exe$") then
        return mp.CLEAN
      end
    end
  end
  local l_0_3 = (mp.GetParentProcInfo)(l_0_1.ppid)
  do
    if l_0_3 ~= nil then
      local l_0_4 = (string.lower)(l_0_3.image_path)
      if l_0_4 ~= nil and (l_0_0[l_0_4:match("([^\\]+)$")] or (string.find)(l_0_4, ":\\windows\\assembly\\nativeimages_", 1, true) or (string.find)(l_0_4, ":\\programdata\\ctes\\components\\", 1, true)) then
        return mp.CLEAN
      end
    end
    TrackPidAndTechnique("CMDHSTR", "T1016", "network_discovery")
    if IsDetectionThresholdMet("CMDHSTR") then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

