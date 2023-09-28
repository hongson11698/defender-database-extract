-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\187b315157bb1\0x000005ff_luac 

-- params : ...
-- function num : 0
reportRelatedBmHits()
addRelatedProcess()
TrackPidAndTechniqueBM("BM", "T1070.002", "DefenseEvasion_IndicatorRemovalOnHost_ClearSystemLogs")
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  (bm.trigger_sig)("BmTraverseTreeBlock", "Detected", l_0_6.ppid)
end
return mp.INFECTED

