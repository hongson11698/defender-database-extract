-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b3e9bd7da7\0x00000317_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if not (string.find)(l_0_0, "^c:\\") and not (string.find)(l_0_0, "^\\\\") then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\chrome.exe", 1, true) or (string.find)(l_0_0, "es.bex.", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.QueryPersistContext)(l_0_0, "ExecutedPENoCert")
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = GetTaintLevelHR()
if l_0_2 == nil or l_0_2 ~= "Medium" and l_0_2 ~= "High" then
  return mp.CLEAN
end
if IsDetectionThresholdMet("BM") and (IsTacticObservedForPid("BM", "processinjection_target") or IsTacticObservedForPid("BM", "discovery")) then
  return mp.INFECTED
end
return mp.CLEAN

