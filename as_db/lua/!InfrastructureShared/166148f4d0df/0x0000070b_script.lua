-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\166148f4d0df\0x0000070b_luac 

-- params : ...
-- function num : 0
if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
  return mp.CLEAN
end
local l_0_0 = (mp.GetScannedPPID)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = {}
for l_0_5,l_0_6 in ipairs((mp.enum_mpattributesubstring)("")) do
  (table.insert)(l_0_1, l_0_6)
end
l_0_1 = (table.concat)(l_0_1, ";")
if l_0_1:find("Detection:", 1, true) then
  (MpCommon.BmTriggerSig)(l_0_0, "SmsNamedAttributes.A", l_0_1)
  return mp.INFECTED
end
return mp.CLEAN

