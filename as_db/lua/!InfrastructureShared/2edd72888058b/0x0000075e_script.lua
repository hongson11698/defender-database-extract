-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2edd72888058b\0x0000075e_luac 

-- params : ...
-- function num : 0
if not IsExchangeServer() then
  return mp.CLEAN
end
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  if l_0_1:match("([^\\]+)$") == "w3wp.exe" then
    local l_0_2 = l_0_0.ppid
    if l_0_2 == "" or l_0_2 == nil then
      return mp.CLEAN
    end
    local l_0_3 = (string.lower)((mp.GetProcessCommandLine)(l_0_2))
    if not (string.find)(l_0_3, "-ap \"", 1, true) then
      TrackPidAndTechnique(l_0_2, "T1505.003", "webshell_parent", 86400)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

