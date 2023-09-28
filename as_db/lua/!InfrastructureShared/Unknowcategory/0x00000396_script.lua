-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000396_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((MpCommon.AnomalyEventLookup)("powtrack", "POWTRACKTDSC|", 1))
local l_0_1 = nil
local l_0_2 = 0
if l_0_0 == nil then
  l_0_1 = (this_sigattrlog[3]).timestamp
  ;
  (MpCommon.AnomalyEventUpdate)("powtrack", "POWTRACKTDSC|", 1, 1)
else
  l_0_1 = l_0_0.LastSeen
  l_0_2 = l_0_0.UnbiasedTime
end
local l_0_3 = (bm.get_imagepath)()
l_0_0 = (MpCommon.AnomalyEventLookup)("powtrack", l_0_3, 1)
local l_0_4 = 1
if l_0_0 ~= nil then
  l_0_4 = l_0_0.Count + 1
else
  local l_0_5 = (this_sigattrlog[3]).timestamp
  if l_0_1 < l_0_5 then
    if l_0_5 - l_0_1 > 26784000000000 then
      (mp.ReportLowfi)(l_0_3, 1888262118)
    end
    if l_0_2 > 6000 then
      (mp.ReportLowfi)(l_0_3, 2177800794)
    end
  end
end
do
  ;
  (MpCommon.AnomalyEventUpdate)("powtrack", l_0_3, l_0_4, 1)
  return mp.CLEAN
end

