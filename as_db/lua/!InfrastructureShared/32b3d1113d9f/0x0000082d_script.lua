-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b3d1113d9f\0x0000082d_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  ;
  (bm.add_related_string)("MassRecon_L_Machine_Event", l_0_0, bm.RelatedStringBMReport)
  local l_0_1 = GetRollingQueue("ReconTracking")
  ;
  (bm.add_related_string)("MassRecon_L_Machine", safeJsonSerialize(l_0_1), bm.RelatedStringBMReport)
end
do
  reportSessionInformationInclusive()
  reportTimingData()
  return mp.INFECTED
end

