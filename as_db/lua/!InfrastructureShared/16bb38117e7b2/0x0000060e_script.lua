-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\16bb38117e7b2\0x0000060e_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[7]).matched then
    local l_0_0 = nil
    if (this_sigattrlog[7]).utf8p1 == nil then
      return mp.CLEAN
    end
    l_0_0 = (this_sigattrlog[7]).utf8p1
    if l_0_0 then
      if (string.match)(l_0_0, "/%.[^/]+$") then
        TrackPidAndTechniqueBM("BM", "T1105", "CommandandControl_IngressToolTransfer_mt2023")
        reportRelatedBmHits()
        return mp.INFECTED
      else
        return mp.CLEAN
      end
    end
  end
  TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl_IngressToolTransfer_mt2023")
  reportRelatedBmHits()
  return mp.INFECTED
end

