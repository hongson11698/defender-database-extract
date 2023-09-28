-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\176b311f58942\0x00000606_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1102", "CommandAndControl_WebService")
TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl_IngressToolTransfer")
addRelatedProcess()
reportRelatedBmHits()
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  (bm.trigger_sig)("BmTraverseTreeBlock", "Detected", l_0_6.ppid)
end
return mp.INFECTED

