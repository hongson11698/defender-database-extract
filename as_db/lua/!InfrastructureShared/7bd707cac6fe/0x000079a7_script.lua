-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\7bd707cac6fe\0x000079a7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0.image_path)
    if (string.find)(l_0_1, "java.exe") or (string.find)(l_0_1, "javaw.exe") then
      return mp.CLEAN
    else
      TrackPidAndTechnique("CMDHSTR", "T1057", "discovery_lsass", 86400)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

