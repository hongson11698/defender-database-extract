-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFHackToolWin32DriverAbuseIQvw64A\0x000010c2_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
  (mp.set_mpattribute)("MpInternal_researchdata=newlyCreated=" .. "true")
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
local l_0_2 = (MpCommon.PathToWin32Path)(l_0_1)
if l_0_2 == nil or l_0_0 == nil then
  return mp.CLEAN
end
if l_0_2 == "" or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_3 = l_0_2 .. "\\" .. l_0_0
;
(mp.set_mpattribute)("MpInternal_researchdata=parentProcessPath=" .. l_0_3)
local l_0_4 = (sysio.GetPEVersionInfo)(l_0_3)
if not l_0_4 then
  return mp.CLEAN
end
local l_0_5 = l_0_4.OriginalFilename
local l_0_6 = l_0_4.InternalName
if l_0_5 then
  (mp.set_mpattribute)("MpInternal_researchdata=parentProcessOFN=" .. l_0_5)
else
  if l_0_6 then
    (mp.set_mpattribute)("MpInternal_researchdata=parentProcessInternalName=" .. l_0_6)
  end
end
return mp.INFECTED

