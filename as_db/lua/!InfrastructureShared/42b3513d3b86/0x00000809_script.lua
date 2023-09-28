-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\42b3513d3b86\0x00000809_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 == nil or #l_0_0 < 12 or (string.lower)((string.sub)(l_0_0, -12)) ~= "\\taskmgr.exe" then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1003.001", "credentialdumping_concrete", 86400)
return mp.INFECTED

