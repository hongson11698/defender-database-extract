-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb30d85e33e\0x00007ebb_luac 

-- params : ...
-- function num : 0
local l_0_0 = RansomwareFeatures()
if l_0_0 == nil or type(l_0_0) ~= "table" or #l_0_0 ~= 7 then
  return mp.CLEAN
end
local l_0_1 = 0
local l_0_2 = ""
for l_0_6 = 1, #l_0_0 do
  l_0_2 = (string.match)(l_0_0[l_0_6], "[^=]+$")
  if l_0_2 == "true" then
    l_0_1 = l_0_1 + 1
  end
end
if l_0_1 >= 4 then
  (bm.add_related_string)("RansomwareFeaturesData", safeJsonSerialize(l_0_0), bm.RelatedStringBMReport)
  reportSessionInformationInclusive()
  sms_untrusted_process()
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN

