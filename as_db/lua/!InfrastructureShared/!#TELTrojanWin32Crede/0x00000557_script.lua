-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELTrojanWin32Crede\0x00000557_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if not (MpCommon.QueryPersistContext)(l_0_0, "SuspCredEnumerateAttempt") then
  return mp.CLEAN
end
if (mp.IsTrustedFile)(false) == true then
  return mp.CLEAN
end
if getAgePrev(false) <= 1 and false <= 100 then
  return mp.INFECTED
end
return mp.CLEAN

