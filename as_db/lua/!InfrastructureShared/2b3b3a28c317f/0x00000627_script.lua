-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2b3b3a28c317f\0x00000627_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if (this_sigattrlog[15]).matched then
    local l_0_1 = nil
    if (this_sigattrlog[15]).utf8p1 == nil then
      return mp.CLEAN
    end
    l_0_1 = (this_sigattrlog[15]).utf8p1
    if l_0_1 then
      if (string.match)(l_0_1, "/%.[^/]+$") then
        TrackPidAndTechniqueBM("BM", "T1560.001", "Collection_ArchiveCollectedData_mt2023")
        reportRelatedBmHits()
        if l_0_0 ~= nil and l_0_0.ppid ~= nil then
          (bm.trigger_sig)("BmTraverseTreeBlock", "Detected", l_0_0.ppid)
        end
        return mp.INFECTED
      else
        return mp.CLEAN
      end
    end
  end
  TrackPidAndTechniqueBM("BM", "T1560.001", "Collection_ArchiveCollectedData_mt2023")
  reportRelatedBmHits()
  if l_0_0 ~= nil and l_0_0.ppid ~= nil then
    (bm.trigger_sig)("BmTraverseTreeBlock", "Detected", l_0_0.ppid)
  end
  return mp.INFECTED
end

