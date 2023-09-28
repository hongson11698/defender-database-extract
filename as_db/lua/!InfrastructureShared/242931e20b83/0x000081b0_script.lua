-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\242931e20b83\0x000081b0_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MpOnOpenOrCloseRtpScan") or not (mp.get_mpattributesubstring)("BM_SCHEDULEDTASK_JOBFILE") or not (mp.get_mpattributesubstring)("SCPT:SchTaskHighPriv") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("TEL:Script/SchTaskSysHighPriv.A") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if (string.find)(l_0_0, "\\system32\\tasks\\.+\\.") then
  return mp.CLEAN
end
local l_0_1 = (mp.GetBruteMatchData)()
local l_0_2 = ""
if l_0_1.is_header then
  l_0_2 = tostring(headerpage)
else
  l_0_2 = tostring(footerpage)
end
local l_0_3 = (string.match)((string.lower)(l_0_2), "<command>(.+)</command>")
if l_0_3 then
  set_research_data("command", l_0_3, false)
end
local l_0_4 = (string.match)((string.lower)(l_0_2), "<arguments>(.+)</arguments>")
if l_0_4 then
  set_research_data("arguments", l_0_4, false)
end
if (MpCommon.GetPersistContextCountNoPath)("TaskSchedMiscTrigger") > 0 and (l_0_3 or l_0_4) then
  return mp.INFECTED
end
return mp.CLEAN

