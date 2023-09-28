-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFHackToolWin32DriverAbuseZamguardA\0x0000006d_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
  (mp.set_mpattribute)("MpInternal_researchdata=newlyCreated=" .. "true")
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 then
  (mp.set_mpattribute)("MpInternal_researchdata=cmd=" .. l_0_1)
end
local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
local l_0_4 = (MpCommon.PathToWin32Path)(l_0_3)
if not l_0_4 or not l_0_2 then
  return mp.CLEAN
end
if l_0_4 == "" or l_0_2 == "" then
  return mp.CLEAN
end
local l_0_5 = l_0_4 .. "\\" .. l_0_2
local l_0_6 = (sysio.GetPEVersionInfo)(l_0_5)
if not l_0_6 then
  return mp.CLEAN
end
local l_0_7 = (string.lower)(l_0_6.OriginalFilename)
if l_0_7 then
  (mp.set_mpattribute)("MpInternal_researchdata=parentProcessOFN=" .. l_0_7)
end
return mp.INFECTED

