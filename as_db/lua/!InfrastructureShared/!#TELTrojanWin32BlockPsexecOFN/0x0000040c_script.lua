-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELTrojanWin32BlockPsexecOFN\0x0000040c_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if not (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
  return mp.CLEAN
end
if not (mp.IsHipsRuleEnabled)("d1e49aac-8f56-4280-b9ba-993a6d77406c") then
  return mp.CLEAN
end
local l_0_0 = nil
l_0_0 = (mp.getfilename)()
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((MpCommon.PathToWin32Path)(l_0_0))
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
if (mp.IsPathExcludedForHipsRule)(l_0_1, "d1e49aac-8f56-4280-b9ba-993a6d77406c") then
  return mp.CLEAN
end
local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_2 == nil or l_0_2 == "" then
  return mp.CLEAN
end
local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
if l_0_3 == nil or l_0_3 == "" then
  return mp.CLEAN
end
local l_0_4 = (MpCommon.PathToWin32Path)(l_0_3)
if l_0_4 == nil or l_0_4 == "" then
  return mp.CLEAN
end
local l_0_5 = l_0_4 .. "\\" .. l_0_2
l_0_5 = (string.lower)(l_0_5)
if (MpCommon.GetOriginalFileName)(l_0_5) == "psexesvc.exe" then
  return mp.INFECTED
end
return mp.CLEAN

