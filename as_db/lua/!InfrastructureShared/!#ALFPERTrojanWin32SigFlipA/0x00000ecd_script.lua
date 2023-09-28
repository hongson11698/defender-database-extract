-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFPERTrojanWin32SigFlipA\0x00000ecd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_mpattributevalue)("RPF:MpCertStart")
local l_0_1 = (mp.get_mpattributevalue)("RPF:MpSeqCertSz")
local l_0_2 = l_0_0 + l_0_1 + 8 + 2 + 4
local l_0_3 = l_0_2 - l_0_2 % 8
local l_0_4 = "þíúÎþíúÎ"
;
(mp.readprotection)(false)
local l_0_5 = (mp.readfile)(l_0_3, 32)
;
(mp.readprotection)(true)
if (tostring(l_0_5)):find(l_0_4, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

