-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000087e_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("Lua:AnomalyImphashNotFreq") and not (mp.get_mpattribute)("Lua:AnomalyImphashNew") then
  return mp.CLEAN
end
local l_0_0 = (mp.enum_mpattributesubstring)("MpInternal_imphash=")
if l_0_0 ~= nil and #l_0_0 > 0 then
  for l_0_4,l_0_5 in ipairs(l_0_0) do
    local l_0_6 = (string.match)(l_0_5, "MpInternal_imphash=(%w+)$")
    if l_0_6 == nil then
      return mp.CLEAN
    end
    local l_0_7 = (MpCommon.AnomalyEventLookup)("ImphashTableNew", l_0_6, 1)
    if l_0_7 ~= nil then
      if l_0_7.Count > 20 then
        (MpCommon.AnomalyEventUpdate)("ImphashTableNew", l_0_6, l_0_7.Count - 20, 1)
        ;
        (mp.set_mpattribute)("Lua:AnomalyDetImphashFrq")
      else
        ;
        (MpCommon.AnomalyEventUpdate)("ImphashTableNew", l_0_6, 0, 1)
        ;
        (mp.set_mpattribute)("Lua:AnomalyDetImphash")
      end
    end
  end
end
do
  return mp.CLEAN
end

