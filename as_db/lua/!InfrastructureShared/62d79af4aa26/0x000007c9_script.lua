-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\62d79af4aa26\0x000007c9_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
TrackPidAndTechnique(l_0_0, "sim_tool", "monkey")
return mp.CLEAN

