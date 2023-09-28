-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAAnomalyTencode7\0x0000034d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.enum_mpattributesubstring)("MpInternal_researchdata=TENCODE7=")
if l_0_0 ~= nil and #l_0_0 > 0 then
  for l_0_4,l_0_5 in ipairs(l_0_0) do
    local l_0_6 = (string.match)(l_0_5, "MpInternal_researchdata=TENCODE7=(%w+)$")
    if l_0_6 == nil then
      return mp.CLEAN
    end
    local l_0_7 = (MpCommon.AnomalyEventLookup)("AnomalyTencode7", "Tencode7TableMarker", 100)
    if l_0_7 == nil then
      (MpCommon.AnomalyEventUpdate)("AnomalyTencode7", "Tencode7TableMarker", 1, 1)
      return mp.CLEAN
    end
    local l_0_8 = (MpCommon.AnomalyEventLookup)("AnomalyTencode7", l_0_6, 1)
    if l_0_8 == nil then
      (MpCommon.AnomalyEventUpdate)("AnomalyTencode7", l_0_6, 1, 1)
      local l_0_9, l_0_10, l_0_11 = (MpCommon.SNidSearch)(228, l_0_6)
      if l_0_9 == true and l_0_10 == "!#Tencode7CommonGlobal" then
        return mp.CLEAN
      end
      if l_0_7.UnbiasedTime > 1800 then
        (mp.set_mpattribute)("Lua:AnomalyPSENew")
        return mp.INFECTED
      end
    else
      do
        ;
        (MpCommon.AnomalyEventUpdate)("AnomalyTencode7", l_0_6, l_0_8.Count + 1, 1)
        do
          local l_0_12, l_0_13, l_0_14 = (MpCommon.SNidSearch)(228, l_0_6)
          if l_0_12 == true and l_0_13 == "!#Tencode7CommonGlobal" then
            return mp.CLEAN
          end
          if l_0_8.Count == 1 then
            (mp.set_mpattribute)("Lua:AnomalyPSEObsMal")
            return mp.INFECTED
          end
          if l_0_8.Count < 3 and l_0_8.UnbiasedTime > 20160 then
            (mp.set_mpattribute)("Lua:AnomalyPSENotFreq")
            return mp.INFECTED
          end
          if l_0_8.LastSeen >= 43200 then
            (MpCommon.AnomalyEventUpdate)("AnomalyTencode7", l_0_6, 1, 1)
            return mp.INFECTED
          end
          -- DECOMPILER ERROR at PC135: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC135: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC135: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
return mp.CLEAN

