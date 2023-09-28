-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\35b39bb49487\0x000079c6_luac 

-- params : ...
-- function num : 0
local l_0_0 = GetRollingQueue("mace_atosev")
if l_0_0 == nil then
  return mp.CLEAN
end
pcallEx("maceSendConfig", maceSendConfig, "mace_atosev")
pcallEx("reportRelatedBmHits", reportRelatedBmHits)
pcallEx("triggerMemoryScanOnProcessTree", triggerMemoryScanOnProcessTree, false, true, "SMS_H", 5000, "Behavior:Win32/CobaltStrike.H!sms")
reportPcallEx()
return mp.INFECTED

