-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3829d9f1d11f\0x00007e47_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MpIsPowerShellAMSIScan") then
  return mp.CLEAN
end
if not isTamperProtectionOn() then
  return mp.CLEAN
end
local l_0_0 = (mp.GetBruteMatchData)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = ""
if l_0_0.is_header then
  l_0_1 = (string.lower)(tostring(headerpage))
else
  l_0_1 = (string.lower)(tostring(footerpage))
end
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = "(windows-defender(-features|-gui)?(\\s|;|$))"
local l_0_3 = false
l_0_3 = (MpCommon.StringRegExpSearch)(l_0_2, l_0_1)
if l_0_3 == false then
  return mp.CLEAN
end
return mp.INFECTED

