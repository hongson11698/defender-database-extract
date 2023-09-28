-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFRansomNoteTrackerCMLGen\0x00000436_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_2, l_0_3 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_2 == nil or l_0_2 == "" then
  return mp.CLEAN
end
if l_0_3 == nil or l_0_3 == "" then
  return mp.CLEAN
end
if l_0_2:sub(1, 8) == "\\device\\" then
  l_0_2 = (MpCommon.PathToWin32Path)(l_0_2)
end
local l_0_4 = "RansomNoteTrackerCML"
local l_0_5 = 3600
local l_0_6 = 100
local l_0_7 = "|"
local l_0_8 = l_0_1 .. l_0_7 .. l_0_0 .. l_0_7 .. l_0_3
local l_0_9 = GetRollingQueueKeyValues(l_0_4, l_0_8)
if l_0_9 then
  for l_0_13,l_0_14 in ipairs(l_0_9) do
    if l_0_14 and l_0_14.value == l_0_2 then
      return mp.CLEAN
    end
  end
  AppendToRollingQueue(l_0_4, l_0_8, l_0_2, l_0_5, l_0_6, 0)
  if #l_0_9 == 8 then
    (MpCommon.BmTriggerSig)(l_0_1, "BM_GenRansomNoteTrackerCML", safeJsonSerialize(l_0_9))
    ;
    (mp.set_mpattribute)("Lua:RansomNoteTrackerCML.Gen")
    return mp.INFECTED
  end
else
  AppendToRollingQueue(l_0_4, l_0_8, l_0_2, l_0_5, l_0_6, 0)
end
return mp.CLEAN

