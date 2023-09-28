-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1a3b33f6e7fa1\0x000013b7_luac 

-- params : ...
-- function num : 0
local l_0_0 = 50000000
if l_0_0 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1486", "Impact_Encryption")
RemediateProcessTreeForLinux()
return mp.INFECTED

