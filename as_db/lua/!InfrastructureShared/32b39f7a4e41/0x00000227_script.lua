-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b39f7a4e41\0x00000227_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  local l_0_1, l_0_2 = l_0_0:match("(%d+);(%w+)")
  ;
  (bm.add_related_string)("detection_weight", l_0_1, bm.RelatedStringBMReport)
  local l_0_3 = GetRollingQueue(l_0_2)
  ;
  (bm.add_related_string)((this_sigattrlog[1]).utf8p1, safeJsonSerialize(l_0_3), bm.RelatedStringBMReport)
end
do
  reportSessionInformationInclusive()
  bm_AddRelatedFileFromCommandLine("bm")
  reportTimingData()
  return mp.INFECTED
end

