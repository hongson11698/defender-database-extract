-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\45b38fc8a550\0x000078ad_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil and l_0_0.image_path ~= nil and l_0_0.image_path ~= "" and (string.find)(l_0_0.image_path, "services.exe", 1, true) then
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1003.001", "credentialdumping", 86400)
  return mp.INFECTED
end
return mp.CLEAN

