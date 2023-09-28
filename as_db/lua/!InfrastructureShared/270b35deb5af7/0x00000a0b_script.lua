-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\270b35deb5af7\0x00000a0b_luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") or (mp.IsHipsRuleEnabled)("9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2") or IsDetectionThresholdMet("BM") then
  bm_AddRelatedFileFromCommandLine("bm", nil, nil, 1)
  return mp.INFECTED
end
return mp.CLEAN

