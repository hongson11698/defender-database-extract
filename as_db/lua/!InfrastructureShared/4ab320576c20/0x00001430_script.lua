-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4ab320576c20\0x00001430_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  TrackPidAndTechniqueBM("BM", "T1027.002", "DefenseEvasionn_SoftwarePacking_mt2023")
  ;
  (bm.trigger_sig)((this_sigattrlog[1]).utf8p1, "UPXELFDroppedSelf")
  local l_0_0 = (mp.GetParentProcInfo)()
  if l_0_0 ~= nil and l_0_0.ppid ~= nil then
    (bm.trigger_sig)((this_sigattrlog[1]).utf8p1, "UPXELFDroppedParent", l_0_0.ppid)
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

