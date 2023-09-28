-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b38bf05953\0x00008252_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcallEx("get_startup_info", bm.get_current_process_startup_info)
do
  local l_0_2, l_0_3, l_0_4 = l_0_0 and l_0_1 ~= nil and l_0_1.ppid ~= nil and l_0_1.ppid or ""
  do
    pcallEx("maceSendConfig", maceSendConfig, "mace_atosev")
    pcallEx("reportRelatedBmHits", reportRelatedBmHits)
    pcallEx("triggerMemoryScanOnProcessTree", triggerMemoryScanOnProcessTree, false, true, "SMS_H", 5000, "Behavior:Win32/CobaltStrike.D!sms")
    pcallEx("addChildrenAsThreat", addChildrenAsThreat)
    pcallEx("reportPatch", function()
  -- function num : 0_1 , upvalues : l_0_5
  local l_2_0 = GetRollingQueueKeys("82e27b72_" .. l_0_5)
  if l_2_0 ~= nil and type(l_2_0) == "table" then
    for l_2_4,l_2_5 in ipairs(l_2_0) do
      (bm.add_related_string)("mace_82e27b72", l_2_5, bm.RelatedStringBMReport)
    end
  end
end
)
    pcallEx("reportHosts", function()
  -- function num : 0_0 , upvalues : l_0_5
  local l_1_0 = GetRollingQueueKeys("015b9d6d_" .. l_0_5)
  if l_1_0 ~= nil and type(l_1_0) == "table" then
    for l_1_4,l_1_5 in ipairs(l_1_0) do
      (bm.add_related_string)("mace_015b9d6d", l_1_5, bm.RelatedStringBMReport)
    end
  end
end
)
    pcallEx("reportBeaconing", function()
  -- function num : 0_2 , upvalues : l_0_5
  local l_3_0 = (string.format)("ScanBeaconing.A:%s", l_0_5)
  local l_3_1 = (MpCommon.AtomicCounterValue)(l_3_0)
  if l_3_1 ~= nil then
    (bm.add_related_string)("mace_7d0d767b", (string.format)("%d", l_3_1), bm.RelatedStringBMReport)
  end
end
)
    reportPcallEx()
    reportRdTrace()
    do return mp.INFECTED end
    -- DECOMPILER ERROR at PC63: freeLocal<0 in 'ReleaseLocals'

  end
end

