-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\113d707e19e54\0x00007bc1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.GetProcessCommandLine)(l_0_0))
local l_0_2 = "rmdir\\s+[\'\"]\\w:\\\\(?:programdata\\\\microsoft|program files \\(x86\\)|program files)\\\\windows defender(?: advanced threat protection)?[\'\"]\\s+-recurse"
local l_0_3 = false
l_0_3 = (MpCommon.StringRegExpSearch)(l_0_2, l_0_1)
if l_0_3 == false then
  return mp.CLEAN
end
return mp.INFECTED

