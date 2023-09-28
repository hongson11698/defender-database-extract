-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\176d7969ec4e9\0x0000022d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.GetProcessCommandLine)(l_0_0))
local l_0_2 = "(icacls.*(MsSense|mpssvc|mpsdrv|wdnisdrv|wdfilter|wdboot|defender).*grant[\\s\\w:\\(,]+(&|\\|\\)|\\s|$))"
local l_0_3, l_0_4 = (MpCommon.StringRegExpSearch)(l_0_2, l_0_1)
if l_0_4 then
  set_research_data("Evidence", (MpCommon.Base64Encode)(l_0_4), false)
  return mp.INFECTED
end
return mp.CLEAN

