-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\TechniqueTracker\0x000082d8_luac 

-- params : ...
-- function num : 0
validate_research_data = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = 1024
  local l_1_3 = 4
  do
    local l_1_4 = 32
    if l_1_4 < (string.len)(l_1_0) then
      return false
    end
    do return l_1_3 <= (string.len)(l_1_1) and (string.len)(l_1_1) <= l_1_2 end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end

set_researchdata_fromtable = function(l_2_0, l_2_1)
  -- function num : 0_1
  if l_2_0 == nil then
    return false
  end
  if not l_2_1 then
    l_2_1 = false
  end
  if l_2_1 then
    local l_2_2 = safeJsonSerialize(l_2_0)
    if l_2_2 ~= nil then
      (bm.add_related_string)("TTData", l_2_2, bm.RelatedStringBMReport)
    end
  else
    do
      for l_2_6,l_2_7 in pairs(l_2_0) do
        local l_2_8 = (string.format)("MpInternal_researchdata=%s=%s", l_2_6, tostring(l_2_7))
        ;
        (mp.set_mpattribute)(l_2_8)
      end
      do
        return true
      end
    end
  end
end

StringEndsWith = function(l_3_0, l_3_1)
  -- function num : 0_2
  do return l_3_1 == "" or (string.sub)(l_3_0, -(string.len)(l_3_1)) == l_3_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

StringStartsWith = function(l_4_0, l_4_1)
  -- function num : 0_3
  do return l_4_1 == "" or (string.sub)(l_4_0, 1, (string.len)(l_4_1)) == l_4_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

StringSplit = function(l_5_0, l_5_1)
  -- function num : 0_4
  if l_5_1 == nil then
    l_5_1 = "%s"
  end
  local l_5_2 = {}
  for l_5_6 in (string.gmatch)(l_5_0, "([^" .. l_5_1 .. "]+)") do
    (table.insert)(l_5_2, l_5_6)
  end
  return l_5_2
end

AddTechniqueGlobal = function(l_6_0, l_6_1)
  -- function num : 0_5
  local l_6_2, l_6_3 = IsTechniqueObservedGlobal(l_6_0, true)
  do
    if l_6_2 then
      local l_6_4, l_6_5 = tonumber(l_6_3) + 1
    end
    -- DECOMPILER ERROR at PC14: Confused about usage of register: R4 in 'UnsetPending'

    AppendToRollingQueue("gTechniquesTable", l_6_0, l_6_4, l_6_1, 100, 1)
  end
end

AddTacticGlobal = function(l_7_0, l_7_1)
  -- function num : 0_6
  local l_7_2, l_7_3 = IsTacticObservedGlobal(l_7_0, true)
  do
    if l_7_2 then
      local l_7_4, l_7_5 = tonumber(l_7_3) + 1
    end
    -- DECOMPILER ERROR at PC14: Confused about usage of register: R4 in 'UnsetPending'

    AppendToRollingQueue("gTacticsTable", l_7_0, l_7_4, l_7_1, 100, 1)
  end
end

AddTechniqueForPid = function(l_8_0, l_8_1, l_8_2)
  -- function num : 0_7
  if l_8_0 == nil or l_8_0 == "" or l_8_1 == nil or l_8_1 == "" then
    return 
  end
  if not l_8_2 then
    l_8_2 = 3600
  end
  l_8_0 = GetRealPidForScenario(l_8_0)
  local l_8_3 = IsTechniqueObservedForPid(l_8_0, l_8_1)
  do
    if l_8_3 then
      local l_8_4, l_8_5, l_8_6 = l_8_0 + 1
    else
    end
    AppendToRollingQueue("Tech-" .. l_8_0, l_8_1, 1, l_8_2)
  end
end

AddTacticForPid = function(l_9_0, l_9_1, l_9_2)
  -- function num : 0_8
  if l_9_0 == nil or l_9_0 == "" or l_9_1 == nil or l_9_1 == "" then
    return 
  end
  if not l_9_2 then
    l_9_2 = 3600
  end
  l_9_0 = GetRealPidForScenario(l_9_0)
  local l_9_3 = IsTacticObservedForPid(l_9_0, l_9_1)
  do
    if l_9_3 then
      local l_9_4, l_9_5, l_9_6 = l_9_0 + 1
    else
    end
    AppendToRollingQueue("Tact-" .. l_9_0, l_9_1, 1, l_9_2)
  end
end

AddPidGlobal = function(l_10_0, l_10_1)
  -- function num : 0_9
  l_10_0 = GetRealPidForScenario(l_10_0)
  AppendToRollingQueue("gPidsTable", l_10_0, 1, l_10_1, 500, 1)
end

GetRealPidForScenario = function(l_11_0)
  -- function num : 0_10
  if l_11_0 == nil then
    return l_11_0, l_11_0
  end
  if l_11_0:match("pid:.+,ProcessStart:.+") then
    return l_11_0, l_11_0
  end
  local l_11_1 = nil
  if l_11_0 == "CMDHSTR" then
    local l_11_2, l_11_3 = pcall(mp.GetParentProcInfo)
    if l_11_2 and l_11_3 ~= nil then
      l_11_1 = l_11_3.ppid
    else
      l_11_1 = (mp.GetScannedPPID)()
    end
  else
    do
      if l_11_0 == "BM" then
        local l_11_4, l_11_5 = pcall(bm.get_current_process_startup_info)
        if l_11_4 and l_11_5 ~= nil then
          l_11_1 = l_11_5.ppid
        end
      else
        do
          if l_11_0 == "AMSI" then
            local l_11_6, l_11_7 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
            if l_11_6 and l_11_7 ~= nil then
              l_11_1 = l_11_7
            end
          else
            do
              do
                if l_11_0 == "RTP" then
                  local l_11_8, l_11_9 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_PROCESS_PPID)
                  if l_11_8 and l_11_9 ~= nil then
                    l_11_1 = l_11_9
                  end
                end
                if l_11_1 == nil then
                  l_11_1 = l_11_0
                end
                return l_11_1, l_11_0
              end
            end
          end
        end
      end
    end
  end
end

GetTechniquesTableForPid = function(l_12_0)
  -- function num : 0_11
  l_12_0 = GetRealPidForScenario(l_12_0)
  local l_12_1 = GetRollingQueueAsHashTable
  do
    local l_12_3 = "Tech-"
    l_12_3 = l_12_3 .. l_12_0
    local l_12_2 = nil
    do return l_12_1(l_12_3) end
    -- DECOMPILER ERROR at PC10: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

GetTacticsTableForPid = function(l_13_0)
  -- function num : 0_12
  l_13_0 = GetRealPidForScenario(l_13_0)
  local l_13_1 = GetRollingQueueAsHashTable
  do
    local l_13_3 = "Tact-"
    l_13_3 = l_13_3 .. l_13_0
    local l_13_2 = nil
    do return l_13_1(l_13_3) end
    -- DECOMPILER ERROR at PC10: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

GetTechniquesTableGlobal = function()
  -- function num : 0_13
  local l_14_0 = GetRollingQueueAsHashTable
  local l_14_1 = "gTechniquesTable"
  do return l_14_0(l_14_1) end
  -- DECOMPILER ERROR at PC4: Confused about usage of register R1 for local variables in 'ReleaseLocals'

end

GetTacticsTableGlobal = function()
  -- function num : 0_14
  local l_15_0 = GetRollingQueueAsHashTable
  local l_15_1 = "gTacticsTable"
  do return l_15_0(l_15_1) end
  -- DECOMPILER ERROR at PC4: Confused about usage of register R1 for local variables in 'ReleaseLocals'

end

GetPidsTableGlobal = function()
  -- function num : 0_15
  local l_16_0 = GetRollingQueueAsHashTable
  local l_16_1 = "gPidsTable"
  do return l_16_0(l_16_1) end
  -- DECOMPILER ERROR at PC4: Confused about usage of register R1 for local variables in 'ReleaseLocals'

end

GetTechniquesCountGlobal = function()
  -- function num : 0_16
  local l_17_0, l_17_1 = pcall(MpCommon.RollingQueueCount, "gTechniquesTable")
  if l_17_0 and l_17_1 ~= nil then
    return l_17_1
  end
  return 0
end

GetTacticsCountGlobal = function()
  -- function num : 0_17
  local l_18_0, l_18_1 = pcall(MpCommon.RollingQueueCount, "gTacticsTable")
  if l_18_0 and l_18_1 ~= nil then
    return l_18_1
  end
  return 0
end

GetTrackedPidsCountGlobal = function()
  -- function num : 0_18
  local l_19_0, l_19_1 = pcall(MpCommon.RollingQueueCount, "gPidsTable")
  if l_19_0 and l_19_1 ~= nil then
    return l_19_1
  end
  return 0
end

GetTechniquesCountForPid = function(l_20_0)
  -- function num : 0_19
  l_20_0 = GetRealPidForScenario(l_20_0)
  local l_20_1, l_20_2 = pcall(MpCommon.RollingQueueCount, "Tech-" .. l_20_0)
  if l_20_1 and l_20_2 ~= nil then
    return l_20_2
  end
  return 0
end

GetTacticsCountForPid = function(l_21_0)
  -- function num : 0_20
  l_21_0 = GetRealPidForScenario(l_21_0)
  local l_21_1, l_21_2 = pcall(MpCommon.RollingQueueCount, "Tact-" .. l_21_0)
  if l_21_1 and l_21_2 ~= nil then
    return l_21_2
  end
  return 0
end

IsTechniqueObservedGlobal = function(l_22_0, l_22_1)
  -- function num : 0_21
  if not l_22_1 then
    l_22_1 = false
  end
  local l_22_2 = IsKeyInRollingQueue
  local l_22_3 = "gTechniquesTable"
  local l_22_4 = l_22_0
  do
    local l_22_5 = l_22_1
    do return l_22_2(l_22_3, l_22_4, l_22_5) end
    -- DECOMPILER ERROR at PC9: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

IsTacticObservedGlobal = function(l_23_0, l_23_1)
  -- function num : 0_22
  if not l_23_1 then
    l_23_1 = false
  end
  local l_23_2 = IsKeyInRollingQueue
  local l_23_3 = "gTacticsTable"
  local l_23_4 = l_23_0
  do
    local l_23_5 = l_23_1
    do return l_23_2(l_23_3, l_23_4, l_23_5) end
    -- DECOMPILER ERROR at PC9: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

IsPidObservedGlobal = function(l_24_0)
  -- function num : 0_23
  l_24_0 = GetRealPidForScenario(l_24_0)
  local l_24_1 = IsKeyInRollingQueue
  local l_24_2 = "gPidsTable"
  local l_24_3 = l_24_0
  do
    local l_24_4 = true
    do return l_24_1(l_24_2, l_24_3, l_24_4) end
    -- DECOMPILER ERROR at PC10: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

IsTechniqueObservedForPid = function(l_25_0, l_25_1, l_25_2)
  -- function num : 0_24
  if l_25_0 == nil or l_25_0 == "" or l_25_1 == nil or l_25_1 == "" then
    return false, nil
  end
  l_25_0 = GetRealPidForScenario(l_25_0)
  if not l_25_2 then
    l_25_2 = false
  end
  local l_25_3 = IsKeyInRollingQueue
  local l_25_4 = "Tech-" .. l_25_0
  local l_25_5 = l_25_1
  do
    local l_25_6 = l_25_2
    do return l_25_3(l_25_4, l_25_5, l_25_6) end
    -- DECOMPILER ERROR at PC26: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  end
end

IsTacticObservedForPid = function(l_26_0, l_26_1, l_26_2)
  -- function num : 0_25
  if l_26_0 == nil or l_26_0 == "" or l_26_1 == nil or l_26_1 == "" then
    return false, nil
  end
  l_26_0 = GetRealPidForScenario(l_26_0)
  if not l_26_2 then
    l_26_2 = false
  end
  local l_26_3 = IsKeyInRollingQueue
  local l_26_4 = "Tact-" .. l_26_0
  local l_26_5 = l_26_1
  do
    local l_26_6 = l_26_2
    do return l_26_3(l_26_4, l_26_5, l_26_6) end
    -- DECOMPILER ERROR at PC26: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  end
end

IsPidExcluded = function(l_27_0)
  -- function num : 0_26
  if IsTacticObservedForPid(l_27_0, "ttexclusion") or IsTechniqueObservedForPid(l_27_0, "ttexclusion") then
    return true
  end
  if IsLegacyOrgMachine() then
    return true
  end
  return false
end

IsDetectionThresholdMet = function(l_28_0, l_28_1, l_28_2, l_28_3, l_28_4)
  -- function num : 0_27
  local l_28_5 = IsPidObservedGlobal(l_28_0)
  if l_28_5 then
    local l_28_6 = GetTechniquesCountGlobal()
    local l_28_7 = GetTacticsCountGlobal()
    local l_28_8 = 0
    local l_28_9 = 0
    local l_28_10 = ""
    local l_28_11 = ""
    local l_28_12 = GetTacticsTableForPid(l_28_0)
    local l_28_13 = GetTechniquesTableForPid(l_28_0)
    if l_28_12 == nil or l_28_13 == nil then
      return false
    end
    for l_28_17,l_28_18 in pairs(l_28_12) do
      if l_28_17 ~= nil then
        l_28_11 = (string.format)("%s%s%s", l_28_11, "|", l_28_17)
      end
      if l_28_18 ~= nil and type(l_28_18) == "number" then
        l_28_9 = l_28_9 + l_28_18
      end
    end
    l_28_11 = (string.lower)(l_28_11)
    for l_28_22,l_28_23 in pairs(l_28_13) do
      if l_28_22 ~= nil then
        l_28_10 = (string.format)("%s%s%s", l_28_10, "|", l_28_22)
      end
      if l_28_23 ~= nil and type(l_28_23) == "number" then
        l_28_8 = l_28_8 + l_28_23
      end
    end
    l_28_10 = (string.lower)(l_28_10)
    if l_28_11:find("ttexclusion", 1, true) or l_28_10:find("ttexclusion", 1, true) or IsLegacyOrgMachine() then
      return false
    end
    local l_28_24 = GetTaintLevelHR()
    if l_28_24 == "Medium" or l_28_24 == "High" then
      return true
    end
    if GetTaintLevelML() == "High" then
      return true
    end
    if l_28_11:find("processinjection_target", 1, true) or l_28_11:find("processhollowing_target", 1, true) then
      return true
    end
    if l_28_11:find("processinjection", 1, true) and l_28_11:find("keylog", 1, true) then
      return true
    end
    if l_28_11:find("indirectcmdexec", 1, true) then
      return true
    end
    if l_28_11:find("processinjection", 1, true) and IsTacticObservedGlobal("processdiscovery") then
      return true
    end
    if l_28_11:find("credentialdumping", 1, true) then
      return true
    end
    if l_28_11:find("command_control_l", 1, true) or l_28_11:find("command_control_n", 1, true) then
      return true
    end
    if l_28_10:find("T1036", 1, true) then
      return true
    end
    if l_28_10:find("T1027.002", 1, true) then
      return true
    end
    if l_28_10:find("T1505.003", 1, true) then
      return true
    end
    if l_28_11:find("_malware", 1, true) or l_28_10:find("tt-thresholdmet", 1, true) or l_28_11:find("tt-thresholdmet", 1, true) then
      return true
    end
  end
  do
    return false
  end
end

GetDetectionThresholdMetReason = function(l_29_0, l_29_1, l_29_2, l_29_3, l_29_4)
  -- function num : 0_28
  local l_29_5 = IsPidObservedGlobal(l_29_0)
  local l_29_6 = false
  local l_29_7 = 0
  if l_29_5 then
    local l_29_8 = GetTechniquesCountGlobal()
    local l_29_9 = GetTacticsCountGlobal()
    local l_29_10 = 0
    local l_29_11 = 0
    local l_29_12 = ""
    local l_29_13 = ""
    local l_29_14 = GetTacticsTableForPid(l_29_0)
    local l_29_15 = GetTechniquesTableForPid(l_29_0)
    if l_29_14 == nil or l_29_15 == nil then
      return false, 0
    end
    for l_29_19,l_29_20 in pairs(l_29_14) do
      if l_29_19 ~= nil then
        l_29_13 = (string.format)("%s%s%s", l_29_13, "|", l_29_19)
      end
      if l_29_20 ~= nil and type(l_29_20) == "number" then
        l_29_11 = l_29_11 + l_29_20
      end
    end
    l_29_13 = (string.lower)(l_29_13)
    for l_29_24,l_29_25 in pairs(l_29_15) do
      if l_29_24 ~= nil then
        l_29_12 = (string.format)("%s%s%s", l_29_12, "|", l_29_24)
      end
      if l_29_25 ~= nil and type(l_29_25) == "number" then
        l_29_10 = l_29_10 + l_29_25
      end
    end
    l_29_12 = (string.lower)(l_29_12)
    if l_29_13:find("ttexclusion", 1, true) or l_29_12:find("ttexclusion", 1, true) or IsLegacyOrgMachine() then
      l_29_7 = (mp.bitor)(l_29_7, 2147483648)
    end
    local l_29_26 = GetTaintLevelHR()
    if l_29_26 == "Medium" or l_29_26 == "High" then
      l_29_7 = (mp.bitor)(l_29_7, 1)
    end
    if GetTaintLevelML() == "High" then
      l_29_7 = (mp.bitor)(l_29_7, 1)
    end
    if l_29_13:find("processinjection_target", 1, true) or l_29_13:find("processhollowing_target", 1, true) then
      l_29_7 = (mp.bitor)(l_29_7, 2)
    end
    if l_29_13:find("processinjection", 1, true) and l_29_13:find("keylog", 1, true) then
      l_29_7 = (mp.bitor)(l_29_7, 4)
    end
    if l_29_13:find("indirectcmdexec", 1, true) then
      l_29_7 = (mp.bitor)(l_29_7, 8)
    end
    if l_29_13:find("processinjection", 1, true) and IsTacticObservedGlobal("processdiscovery") then
      l_29_7 = (mp.bitor)(l_29_7, 16)
    end
    if l_29_13:find("credentialdumping", 1, true) then
      l_29_7 = (mp.bitor)(l_29_7, 32)
    end
    if l_29_13:find("command_control_l", 1, true) or l_29_13:find("command_control_n", 1, true) then
      l_29_7 = (mp.bitor)(l_29_7, 1024)
    end
    if l_29_12:find("T1036", 1, true) then
      l_29_7 = (mp.bitor)(l_29_7, 128)
    end
    if l_29_12:find("T1027.002", 1, true) then
      l_29_7 = (mp.bitor)(l_29_7, 256)
    end
    if l_29_12:find("T1505.003", 1, true) then
      l_29_7 = (mp.bitor)(l_29_7, 4096)
    end
    if l_29_13:find("_malware", 1, true) or l_29_12:find("tt-thresholdmet", 1, true) or l_29_13:find("tt-thresholdmet", 1, true) then
      l_29_7 = (mp.bitor)(l_29_7, 2048)
    end
  end
  do
    if l_29_7 ~= 0 then
      l_29_6 = true
      if (mp.bitand)(l_29_7, 2147483648) ~= 0 then
        l_29_6 = false
      end
    end
    return l_29_6, l_29_7
  end
end

IsDetectionThresholdMetLinux = function(l_30_0, l_30_1, l_30_2, l_30_3, l_30_4)
  -- function num : 0_29
  local l_30_5 = 0
  local l_30_6 = true
  local l_30_7 = nil
  if l_30_6 then
    local l_30_8 = GetTacticsTableForPid(l_30_0)
    local l_30_9 = GetTechniquesTableForPid(l_30_0)
    if l_30_8 == nil or l_30_9 == nil then
      return false
    end
    local l_30_10 = GetTaintLevelHR()
    if l_30_10 == "Medium" or l_30_10 == "High" then
      return true
    end
    local l_30_11 = GetTaintLevelML()
    if l_30_11 == "High" then
      return true
    end
    for l_30_15,l_30_16 in pairs(l_30_8) do
      if l_30_15 ~= nil then
        if l_30_7 == nil then
          l_30_7 = l_30_15:lower()
        else
          l_30_7 = l_30_7 .. " | " .. l_30_15:lower()
        end
      end
      if l_30_16 ~= nil then
        l_30_5 = l_30_5 + l_30_16
      end
    end
    if l_30_7 ~= nil then
      if l_30_7:find("impact", 1, true) and l_30_7:find("collection", 1, true) and l_30_7:find("discovery", 1, true) then
        return true
      end
      if l_30_7:find("execution", 1, true) and l_30_7:find("persistence", 1, true) then
        return true
      end
      if l_30_7:find("collection", 1, true) and l_30_7:find("impact", 1, true) and (l_30_7:find("credentialaccess", 1, true) or l_30_7:find("execution", 1, true)) then
        return true
      end
      if l_30_7:find("defenseevasion", 1, true) and l_30_7:find("lateralmovement", 1, true) and l_30_7:find("collection", 1, true) then
        return true
      end
      if l_30_7:find("credentialaccess", 1, true) and l_30_7:find("impact", 1, true) and l_30_7:find("collection", 1, true) and l_30_7:find("exfil", 1, true) then
        return true
      end
      if l_30_7:find("accountdiscovery", 1, true) and l_30_7:find("lateralmovement", 1, true) and l_30_7:find("remotesystemdiscovery", 1, true) then
        return true
      end
      if l_30_7:find("execution", 1, true) and l_30_7:find("impact", 1, true) then
        return true
      end
      if (l_30_7:find("collection", 1, true) or l_30_7:find("discovery", 1, true)) and l_30_7:find("exfiltration", 1, true) then
        return true
      end
    end
  end
  do
    return false
  end
end

GetDetectionThresholdMetLinuxReason = function(l_31_0, l_31_1, l_31_2, l_31_3, l_31_4)
  -- function num : 0_30
  local l_31_5 = 0
  local l_31_6 = true
  local l_31_7 = nil
  local l_31_8 = false
  local l_31_9 = 0
  if l_31_6 then
    local l_31_10 = GetTacticsTableForPid(l_31_0)
    local l_31_11 = GetTechniquesTableForPid(l_31_0)
    if l_31_10 == nil or l_31_11 == nil then
      return false, 0
    end
    local l_31_12 = GetTaintLevelHR()
    if l_31_12 == "Medium" or l_31_12 == "High" then
      l_31_9 = (mp.bitor)(l_31_9, 1)
    end
    local l_31_13 = GetTaintLevelML()
    if l_31_13 == "High" then
      l_31_9 = (mp.bitor)(l_31_9, 1)
    end
    for l_31_17,l_31_18 in pairs(l_31_10) do
      if l_31_17 ~= nil then
        if l_31_7 == nil then
          l_31_7 = l_31_17:lower()
        else
          l_31_7 = l_31_7 .. " | " .. l_31_17:lower()
        end
      end
      if l_31_18 ~= nil then
        l_31_5 = l_31_5 + l_31_18
      end
    end
    if l_31_7 ~= nil then
      if l_31_7:find("impact", 1, true) and l_31_7:find("collection", 1, true) and l_31_7:find("discovery", 1, true) then
        l_31_9 = (mp.bitor)(l_31_9, 2)
      end
      if l_31_7:find("execution", 1, true) and l_31_7:find("persistence", 1, true) then
        l_31_9 = (mp.bitor)(l_31_9, 4)
      end
      if l_31_7:find("collection", 1, true) and l_31_7:find("impact", 1, true) and (l_31_7:find("credentialaccess", 1, true) or l_31_7:find("execution", 1, true)) then
        l_31_9 = (mp.bitor)(l_31_9, 8)
      end
      if l_31_7:find("defenseevasion", 1, true) and l_31_7:find("lateralmovement", 1, true) and l_31_7:find("collection", 1, true) then
        l_31_9 = (mp.bitor)(l_31_9, 16)
      end
      if l_31_7:find("credentialaccess", 1, true) and l_31_7:find("impact", 1, true) and l_31_7:find("collection", 1, true) and l_31_7:find("exfil", 1, true) then
        l_31_9 = (mp.bitor)(l_31_9, 32)
      end
      if l_31_7:find("accountdiscovery", 1, true) and l_31_7:find("lateralmovement", 1, true) and l_31_7:find("remotesystemdiscovery", 1, true) then
        l_31_9 = (mp.bitor)(l_31_9, 64)
      end
      if l_31_7:find("execution", 1, true) and l_31_7:find("impact", 1, true) then
        l_31_9 = (mp.bitor)(l_31_9, 128)
      end
      if (l_31_7:find("collection", 1, true) or l_31_7:find("discovery", 1, true)) and l_31_7:find("exfiltration", 1, true) then
        l_31_9 = (mp.bitor)(l_31_9, 256)
      end
    end
  end
  do
    if l_31_9 ~= 0 then
      l_31_8 = true
    end
    return l_31_8, l_31_9
  end
end

GetTaintLevelHR = function()
  -- function num : 0_31
  -- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

  do
    if (MpCommon.GetPersistContextCountNoPath)("TaintedMachine") > 0 then
      if (MpCommon.GetPersistContextCountNoPath)("TaintedMachineHigh") > 0 then
        local l_32_0 = nil
      else
      end
    end
    -- DECOMPILER ERROR at PC28: Overwrote pending register: R0 in 'AssignReg'

    if (MpCommon.GetPersistContextCountNoPath)("TaintedMachineMedium") <= 0 or (MpCommon.GetPersistContextCountNoPath)("TaintedMachineLow") > 0 then
      return "Medium"
    end
  end
end

GetTaintLevelML = function()
  -- function num : 0_32
  -- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

  do
    if (MpCommon.GetPersistContextCountNoPath)("TaintedMachine") > 0 then
      if (MpCommon.GetPersistContextCountNoPath)("TaintedMachineML_High") > 0 then
        local l_33_0 = nil
      else
      end
    end
    -- DECOMPILER ERROR at PC28: Overwrote pending register: R0 in 'AssignReg'

    if (MpCommon.GetPersistContextCountNoPath)("TaintedMachineML_Medium") <= 0 or (MpCommon.GetPersistContextCountNoPath)("TaintedMachineML_Low") > 0 then
      return "Medium"
    end
  end
end

AddPidSpecificTechniqueAndTactic = function(l_34_0, l_34_1, l_34_2, l_34_3)
  -- function num : 0_33
  l_34_0 = GetRealPidForScenario(l_34_0)
  if l_34_0 ~= nil then
    if not l_34_3 then
      l_34_3 = 3600
    end
    AddPidGlobal(l_34_0, l_34_3)
    if l_34_1 ~= nil and l_34_1 ~= "" and l_34_1 ~= "T0000" then
      AddTechniqueForPid(l_34_0, l_34_1, l_34_3)
      AddTechniqueGlobal(l_34_1, l_34_3)
    end
    if l_34_2 ~= nil and l_34_2 ~= "" then
      AddTacticForPid(l_34_0, l_34_2, l_34_3)
      AddTacticGlobal(l_34_2, l_34_3)
    end
  end
end

AddResearchData = function(l_35_0, l_35_1)
  -- function num : 0_34
  l_35_0 = GetRealPidForScenario(l_35_0)
  if not l_35_1 then
    l_35_1 = false
  end
  local l_35_2, l_35_3 = GetDetectionThresholdMetReason(l_35_0)
  local l_35_4 = {}
  l_35_4.ttver = "0002"
  l_35_4.TrackedPid = l_35_0
  l_35_4.IsThresholdMet = tostring(l_35_2)
  l_35_4.ThresholdMetReason = "000" .. tostring(l_35_3)
  l_35_4.PidsCount = "000" .. tostring(GetTrackedPidsCountGlobal())
  do
    if GetRollingQueueKeysAsString("Tech-" .. l_35_0) == nil then
      local l_35_5, l_35_6 = l_35_0 .. " tech table missing"
    end
    -- DECOMPILER ERROR at PC40: Confused about usage of register: R5 in 'UnsetPending'

    l_35_4.TrackedPidTechniques = l_35_5
    do
      if GetRollingQueueKeysAsString("Tact-" .. l_35_0) == nil then
        local l_35_7 = nil
      end
      l_35_4.TrackedPidTactics = l_35_0 .. " tact table missing"
      local l_35_8 = nil
      if GetRollingQueueHashTableAsString("InheritedTech-" .. l_35_0) ~= nil then
        l_35_4.TrackedPidInheritedTechniques = (MpCommon.Base64Encode)(GetRollingQueueHashTableAsString("InheritedTech-" .. l_35_0))
      end
      local l_35_9 = nil
      if GetRollingQueueHashTableAsString("InheritedTact-" .. l_35_0) ~= nil then
        l_35_4.TrackedPidInheritedTactics = (MpCommon.Base64Encode)(GetRollingQueueHashTableAsString("InheritedTact-" .. l_35_0))
      end
      do
        if GetRollingQueueKeysAsString("gTechniquesTable") == nil then
          local l_35_10, l_35_11, l_35_14 = , "gTechniquesTable table missing"
        end
        -- DECOMPILER ERROR at PC82: Confused about usage of register: R9 in 'UnsetPending'

        l_35_4.AllTechniques = l_35_14
        do
          if GetRollingQueueKeysAsString("gTacticsTable") == nil then
            local l_35_12, l_35_15 = nil
          end
          l_35_4.AllTactics = "gTacticsTable table missing"
          if (MpCommon.GetPersistContextCountNoPath)("TaintedMachine") >= 1 then
            l_35_4.IsTainted = "true"
            local l_35_13 = nil
            if (MpCommon.GetPersistContextNoPath)("TaintedMachine") then
              l_35_4.TaintLevel = (table.concat)((MpCommon.GetPersistContextNoPath)("TaintedMachine"), "|")
            end
          else
            do
              l_35_4.IsTainted = "false"
              set_researchdata_fromtable(l_35_4, l_35_1)
            end
          end
        end
      end
    end
  end
end

TT_SendBMSigTrigger = function(l_36_0, l_36_1, l_36_2, l_36_3)
  -- function num : 0_35
  if mp.ENGINEBUILD < 19900 then
    return 
  end
  local l_36_4 = GetRealPidForScenario(l_36_0)
  if not l_36_3 then
    l_36_3 = 10
  end
  if l_36_4 and l_36_1 and l_36_2 then
    local l_36_5 = (string.lower)((string.format)("%s|%s|%s", l_36_4, l_36_1, l_36_2))
    if not IsKeyInRollingQueue("tt-sigtriggers", l_36_5, true) then
      local l_36_6 = pcall(MpCommon.BmTriggerSig, l_36_4, l_36_1, l_36_2)
      if l_36_6 then
        AppendToRollingQueue("tt-sigtriggers", l_36_5, "1", l_36_3)
      end
    end
  end
end

TrackPidAndTechnique = function(l_37_0, l_37_1, l_37_2, l_37_3, l_37_4)
  -- function num : 0_36
  if l_37_0 == nil or l_37_0 == "" or l_37_1 == nil or l_37_1 == "" then
    return 
  end
  l_37_0 = GetRealPidForScenario(l_37_0)
  if l_37_3 == nil then
    l_37_3 = 3600
  end
  AddPidSpecificTechniqueAndTactic(l_37_0, l_37_1, l_37_2, l_37_3)
  if not l_37_4 then
    l_37_4 = false
  end
  if not l_37_4 then
    AddResearchData(l_37_0, false)
  end
  if l_37_0:sub(1, 4) == "pid:" then
    TT_SendBMSigTrigger(l_37_0, l_37_1, l_37_2)
  end
end

TrackPidAndTechniqueBM = function(l_38_0, l_38_1, l_38_2, l_38_3, l_38_4)
  -- function num : 0_37
  if l_38_0 == nil or l_38_0 == "" or l_38_1 == nil or l_38_1 == "" then
    return 
  end
  l_38_0 = GetRealPidForScenario(l_38_0)
  if l_38_3 == nil then
    l_38_3 = 3600
  end
  AddPidSpecificTechniqueAndTactic(l_38_0, l_38_1, l_38_2, l_38_3)
  if not l_38_4 then
    l_38_4 = false
  end
  if not l_38_4 then
    AddResearchData(l_38_0, true)
  end
  if l_38_0:sub(1, 4) == "pid:" and l_38_2 ~= nil and l_38_2 ~= "" then
    -- WARNING: undefined locals caused missing assignments!
  end
end

GetProcessPpidByScenario = function(l_39_0)
  -- function num : 0_38
  if l_39_0 == nil then
    return nil
  end
  local l_39_1 = nil
  local l_39_2 = l_39_0:lower()
  if l_39_2 == "cmdhstr" then
    l_39_1 = (mp.GetScannedPPID)()
  else
    if l_39_2 == "bm" then
      local l_39_3, l_39_4 = pcall(bm.get_current_process_startup_info)
      if l_39_3 and l_39_4 ~= nil then
        l_39_1 = l_39_4.ppid
      end
    else
      do
        if l_39_2 == "amsi" then
          local l_39_5, l_39_6 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
          if l_39_5 and l_39_6 ~= nil then
            l_39_1 = l_39_6
          end
        else
          do
            do
              if l_39_2 == "rtp" then
                local l_39_7, l_39_8 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_PROCESS_ID)
                if l_39_7 and l_39_8 ~= nil then
                  l_39_1 = l_39_8
                end
              end
              return l_39_1
            end
          end
        end
      end
    end
  end
end

TrackCustomPersistContextNameByPPID = function(l_40_0, l_40_1, l_40_2, l_40_3)
  -- function num : 0_39
  if l_40_0 == nil or l_40_1 == nil or l_40_2 == nil then
    return nil
  end
  if l_40_1:sub(1, 4) ~= "pid:" then
    l_40_1 = GetProcessPpidByScenario(l_40_1)
  end
  if l_40_1 == nil then
    return nil
  end
  if l_40_0:lower() == "set" then
    if l_40_3 == nil then
      l_40_3 = 3600
    end
    local l_40_7 = MpCommon.AppendPersistContextNoPath
    l_40_7(l_40_1, l_40_2, l_40_3)
    l_40_7 = true
    return l_40_7
  else
    do
      if l_40_0:lower() == "query" then
        local l_40_4 = MpCommon.QueryPersistContextNoPath
        local l_40_5 = l_40_1
        do
          local l_40_6 = l_40_2
          do return l_40_4(l_40_5, l_40_6) end
          -- DECOMPILER ERROR at PC48: Confused about usage of register R5 for local variables in 'ReleaseLocals'

          do return nil end
          -- DECOMPILER ERROR at PC51: Confused about usage of register R4 for local variables in 'ReleaseLocals'

        end
      end
    end
  end
end

normalize_unicode = function(l_41_0)
  -- function num : 0_40
  if l_41_0 == nil then
    return 
  end
  local l_41_1 = false
  local l_41_2 = ""
  for l_41_6 in l_41_0:gmatch(".") do
    local l_41_7 = (string.byte)(l_41_6)
    if l_41_7 == 0 then
      if not l_41_1 then
        l_41_1 = true
      else
        l_41_2 = l_41_2 .. " "
        l_41_1 = false
      end
    else
      if l_41_7 >= 32 and l_41_7 <= 126 then
        l_41_2 = l_41_2 .. l_41_6
        l_41_1 = false
      else
        l_41_1 = false
      end
    end
  end
  return l_41_2
end

appendNotExistingFilePersistContext = function(l_42_0, l_42_1, l_42_2)
  -- function num : 0_41
  if l_42_0 == nil or l_42_1 == nil then
    return false
  end
  if l_42_2 == nil then
    l_42_2 = 0
  end
  if not (MpCommon.QueryPersistContext)(l_42_0, l_42_1) then
    (MpCommon.AppendPersistContext)(l_42_0, l_42_1, l_42_2)
    return true
  end
  return false
end

appendFilePersistContextFromList = function(l_43_0, l_43_1, l_43_2, l_43_3)
  -- function num : 0_42
  if l_43_0 == nil or l_43_1 == nil then
    return false
  end
  if l_43_2 == nil then
    l_43_2 = 0
  end
  local l_43_4 = false
  for l_43_8,l_43_9 in ipairs(l_43_1) do
    if l_43_3 ~= nil and (mp.bitand)(l_43_3, 1) == 1 then
      (MpCommon.AppendPersistContext)(l_43_0, l_43_9, l_43_2)
      l_43_4 = true
    else
      if appendNotExistingFilePersistContext(l_43_0, l_43_9) then
        l_43_4 = true
      end
    end
  end
  return l_43_4
end

generateCustomStringHash = function(l_44_0)
  -- function num : 0_43
  if l_44_0 == nil or type(l_44_0) ~= "string" or #l_44_0 <= 0 then
    return 
  end
  local l_44_1 = (string.lower)((string.format)("0x%02X_0x%02X", (mp.crc32)(-1, l_44_0, 1, #l_44_0), tostring(#l_44_0)))
  if l_44_1 == nil or #l_44_1 <= 10 then
    return 
  end
  return l_44_1
end

getCustomStringHash = function(l_45_0)
  -- function num : 0_44
  if l_45_0 == nil or type(l_45_0) ~= "string" or #l_45_0 <= 0 then
    return 
  end
  local l_45_1 = (string.lower)(l_45_0)
  l_45_1 = (string.gsub)(l_45_1, "\"", "")
  l_45_1 = (string.gsub)(l_45_1, " ", "")
  return generateCustomStringHash(l_45_1), l_45_1
end

checkFileLastWriteTime = function(l_46_0, l_46_1)
  -- function num : 0_45
  if l_46_0 == nil and #l_46_0 <= 4 then
    return 
  end
  l_46_0 = (MpCommon.PathToWin32Path)(l_46_0)
  if not (sysio.IsFileExists)(l_46_0) then
    return 
  end
  local l_46_2 = (sysio.GetFileLastWriteTime)(l_46_0)
  if not ((sysio.GetLastResult)()).Success or l_46_2 == 0 then
    return 
  end
  local l_46_3 = l_46_2 / 10000000 - 11644473600
  local l_46_4 = (MpCommon.GetCurrentTimeT)()
  local l_46_5 = l_46_4 - l_46_3
  do
    if l_46_1 ~= nil then
      local l_46_6 = false
      if l_46_4 < l_46_3 or l_46_1 < l_46_5 then
        l_46_6 = true
      end
      return l_46_6, l_46_5, l_46_3, l_46_2, l_46_4
    end
    return l_46_5, l_46_3, l_46_2, l_46_4
  end
end

IsTacticObservedForParents = function(l_47_0, l_47_1, l_47_2, l_47_3)
  -- function num : 0_46
  if type(l_47_2) ~= "number" or l_47_2 <= 0 or l_47_2 > 15 or l_47_0 == nil or l_47_0 == "" or l_47_1 == nil or l_47_1 == "" then
    return false, nil
  end
  local l_47_4 = (mp.GetParentProcInfo)(l_47_0)
  if l_47_4 ~= nil then
    local l_47_5, l_47_6 = IsTacticObservedForPid(l_47_4.ppid, l_47_1, l_47_3)
    if l_47_5 then
      return l_47_5, l_47_6
    else
      local l_47_7 = IsTacticObservedForParents
      local l_47_8 = l_47_4.ppid
      local l_47_9 = l_47_1
      local l_47_10 = l_47_2 - 1
      do
        local l_47_11 = l_47_3
        do return l_47_7(l_47_8, l_47_9, l_47_10, l_47_11) end
        -- DECOMPILER ERROR at PC44: Confused about usage of register R8 for local variables in 'ReleaseLocals'

        l_47_5 = false
        l_47_6 = nil
        do return l_47_5, l_47_6 end
        -- DECOMPILER ERROR at PC48: Confused about usage of register R7 for local variables in 'ReleaseLocals'

      end
    end
  end
end

IsTechniqueObservedForParents = function(l_48_0, l_48_1, l_48_2, l_48_3)
  -- function num : 0_47
  if type(l_48_2) ~= "number" or l_48_2 <= 0 or l_48_2 > 15 or l_48_0 == nil or l_48_0 == "" or l_48_1 == nil or l_48_1 == "" then
    return false, nil
  end
  local l_48_4 = (mp.GetParentProcInfo)(l_48_0)
  if l_48_4 ~= nil then
    local l_48_5, l_48_6 = IsTechniqueObservedForPid(l_48_4.ppid, l_48_1, l_48_3)
    if l_48_5 then
      return l_48_5, l_48_6
    else
      local l_48_7 = IsTechniqueObservedForParents
      local l_48_8 = l_48_4.ppid
      local l_48_9 = l_48_1
      local l_48_10 = l_48_2 - 1
      do
        local l_48_11 = l_48_3
        do return l_48_7(l_48_8, l_48_9, l_48_10, l_48_11) end
        -- DECOMPILER ERROR at PC44: Confused about usage of register R8 for local variables in 'ReleaseLocals'

        l_48_5 = false
        l_48_6 = nil
        do return l_48_5, l_48_6 end
        -- DECOMPILER ERROR at PC48: Confused about usage of register R7 for local variables in 'ReleaseLocals'

      end
    end
  end
end

expandRelativePath = function(l_49_0, l_49_1)
  -- function num : 0_48
  if l_49_0 == nil or #l_49_0 <= 4 or l_49_1 == nil or #l_49_1 <= 2 then
    return 
  end
  if (string.sub)(l_49_0, 1, 3) ~= "..\\" then
    return 
  end
  local l_49_2, l_49_3 = (string.gsub)(l_49_0, "%.%.\\", "")
  if l_49_3 == nil or l_49_3 == 0 then
    return 
  end
  local l_49_4, l_49_5 = (string.gsub)(l_49_1, "\\", "")
  if l_49_5 == nil or l_49_5 == 0 then
    return 
  end
  l_49_5 = l_49_5 + 1
  do
    if l_49_5 - l_49_3 <= 0 then
      local l_49_6 = 1
    end
    local l_49_7 = nil
    if (string.gmatch)(l_49_1, "[^\\]+") == nil then
      return 
    end
    local l_49_8 = nil
    local l_49_9 = 1
    for l_49_13 in l_49_8 do
      local l_49_10 = ""
      -- DECOMPILER ERROR at PC61: Confused about usage of register: R13 in 'UnsetPending'

      l_49_10 = l_49_10 .. R13_PC61 .. "\\"
      if l_49_7 <= l_49_9 then
        break
      end
      l_49_9 = l_49_9 + 1
    end
    do
      -- DECOMPILER ERROR at PC70: Confused about usage of register: R9 in 'UnsetPending'

      if l_49_10 == "" then
        return 
      end
      -- DECOMPILER ERROR at PC73: Confused about usage of register: R9 in 'UnsetPending'

      return l_49_10 .. l_49_2
    end
  end
end

IsInheritedTechniqueObservedForPid = function(l_50_0, l_50_1, l_50_2)
  -- function num : 0_49
  if l_50_0 == nil or l_50_0 == "" or l_50_1 == nil or l_50_1 == "" then
    return false, nil
  end
  l_50_0 = GetRealPidForScenario(l_50_0)
  if not l_50_2 then
    l_50_2 = false
  end
  local l_50_3 = IsKeyInRollingQueue
  local l_50_4 = "InheritedTech-" .. l_50_0
  local l_50_5 = l_50_1
  do
    local l_50_6 = l_50_2
    do return l_50_3(l_50_4, l_50_5, l_50_6) end
    -- DECOMPILER ERROR at PC26: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  end
end

IsInheritedTacticObservedForPid = function(l_51_0, l_51_1, l_51_2)
  -- function num : 0_50
  if l_51_0 == nil or l_51_0 == "" or l_51_1 == nil or l_51_1 == "" then
    return false, nil
  end
  l_51_0 = GetRealPidForScenario(l_51_0)
  if not l_51_2 then
    l_51_2 = false
  end
  local l_51_3 = IsKeyInRollingQueue
  local l_51_4 = "InheritedTact-" .. l_51_0
  local l_51_5 = l_51_1
  do
    local l_51_6 = l_51_2
    do return l_51_3(l_51_4, l_51_5, l_51_6) end
    -- DECOMPILER ERROR at PC26: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  end
end

AddInheritedTechniqueForPid = function(l_52_0, l_52_1, l_52_2, l_52_3)
  -- function num : 0_51
  if l_52_0 == nil or l_52_0 == "" or l_52_1 == nil or l_52_1 == "" or l_52_2 == nil or l_52_2 == "" then
    return 
  end
  if not l_52_3 then
    l_52_3 = 3600
  end
  l_52_0 = GetRealPidForScenario(l_52_0)
  local l_52_4, l_52_5 = IsInheritedTechniqueObservedForPid(l_52_0, l_52_2)
  if l_52_4 then
    l_52_5 = l_52_5 .. "," .. l_52_1
  else
    l_52_5 = l_52_1
  end
  AppendToRollingQueue("InheritedTech-" .. l_52_0, l_52_2, l_52_5, l_52_3)
end

AddInheritedTacticForPid = function(l_53_0, l_53_1, l_53_2, l_53_3)
  -- function num : 0_52
  if l_53_0 == nil or l_53_0 == "" or l_53_1 == nil or l_53_1 == "" or l_53_2 == nil or l_53_2 == "" then
    return 
  end
  if not l_53_3 then
    l_53_3 = 3600
  end
  l_53_0 = GetRealPidForScenario(l_53_0)
  local l_53_4, l_53_5 = IsInheritedTacticObservedForPid(l_53_0, l_53_2)
  if l_53_4 then
    l_53_5 = l_53_5 .. "," .. l_53_1
  else
    l_53_5 = l_53_1
  end
  AppendToRollingQueue("InheritedTact-" .. l_53_0, l_53_2, l_53_5, l_53_3)
end

AddInheritedTechniqueAndTacticToTargetPpid = function(l_54_0, l_54_1, l_54_2, l_54_3, l_54_4)
  -- function num : 0_53
  if l_54_0 == nil or l_54_0 == "" or l_54_1 == nil or l_54_1 == "" then
    return 
  end
  l_54_0 = GetRealPidForScenario(l_54_0)
  if not l_54_4 then
    l_54_4 = 3600
  end
  if l_54_2 ~= nil and l_54_2 ~= "" then
    AddInheritedTechniqueForPid(l_54_0, l_54_1, l_54_2, l_54_4)
  end
  if l_54_3 ~= nil and l_54_3 ~= "" then
    AddInheritedTacticForPid(l_54_0, l_54_1, l_54_3, l_54_4)
  end
end

AddTechniqueObservedToParents = function(l_55_0, l_55_1, l_55_2, l_55_3, l_55_4, l_55_5)
  -- function num : 0_54
  if type(l_55_2) ~= "number" or l_55_2 <= 0 or l_55_2 > 15 or l_55_0 == nil or l_55_0 == "" or l_55_1 == nil or l_55_1 == "" or l_55_3 ~= nil and type(l_55_3) ~= "table" then
    return 
  end
  if l_55_5 == nil then
    l_55_5 = l_55_0
  end
  local l_55_6 = (mp.GetParentProcInfo)(l_55_0)
  if l_55_6 == nil or l_55_6.image_path == nil then
    return 
  end
  if l_55_3 ~= nil then
    for l_55_10,l_55_11 in ipairs(l_55_3) do
      if (string.find)(l_55_6.image_path, l_55_11, 1, true) then
        return 
      end
    end
  end
  do
    AddInheritedTechniqueForPid(l_55_6.ppid, l_55_5, l_55_1, l_55_4)
    AddTechniqueObservedToParents(l_55_6.ppid, l_55_1, l_55_2 - 1, l_55_3, l_55_4, l_55_5)
  end
end

AddTacticsObservedToParents = function(l_56_0, l_56_1, l_56_2, l_56_3, l_56_4, l_56_5)
  -- function num : 0_55
  if type(l_56_2) ~= "number" or l_56_2 <= 0 or l_56_2 > 15 or l_56_0 == nil or l_56_0 == "" or l_56_1 == nil or l_56_1 == "" or l_56_3 ~= nil and type(l_56_3) ~= "table" then
    return 
  end
  if l_56_5 == nil then
    l_56_5 = l_56_0
  end
  local l_56_6 = (mp.GetParentProcInfo)(l_56_0)
  if l_56_6 == nil or l_56_6.image_path == nil then
    return 
  end
  if l_56_3 ~= nil then
    for l_56_10,l_56_11 in ipairs(l_56_3) do
      if (string.find)(l_56_6.image_path, l_56_11, 1, true) then
        return 
      end
    end
  end
  do
    AddInheritedTacticForPid(l_56_6.ppid, l_56_5, l_56_1, l_56_4)
    AddTacticsObservedToParents(l_56_6.ppid, l_56_1, l_56_2 - 1, l_56_3, l_56_4, l_56_5)
  end
end

AddTechniqueAndTacticToParents = function(l_57_0, l_57_1, l_57_2, l_57_3, l_57_4, l_57_5)
  -- function num : 0_56
  if l_57_0 == nil then
    return 
  end
  if not l_57_5 then
    l_57_5 = 3600
  end
  if l_57_1 ~= nil and l_57_1 ~= "" then
    AddTechniqueObservedToParents(l_57_0, l_57_1, l_57_3, l_57_4, l_57_5, l_57_0)
  end
  if l_57_2 ~= nil and l_57_2 ~= "" then
    AddTacticsObservedToParents(l_57_0, l_57_2, l_57_3, l_57_4, l_57_5, l_57_0)
  end
end

TrackFileAndTechnique = function(l_58_0, l_58_1, l_58_2, l_58_3)
  -- function num : 0_57
  ValidateAddTechniqueInput = function(l_59_0, l_59_1, l_59_2)
    -- function num : 0_57_0
    if l_59_0 == nil or l_59_1 == nil or l_59_2 == nil then
      return 
    end
    local l_59_3 = "BM_M"
    local l_59_4 = nil
    if (string.sub)(l_59_1, 1, #l_59_3) == l_59_3 then
      l_59_4 = l_59_1
    else
      if (string.match)(l_59_1, "^[tT][0-9][0-9][0-9][0-9]") then
        l_59_4 = l_59_3 .. l_59_1
      end
    end
    if l_59_4 ~= nil then
      (MpCommon.AppendPersistContext)(l_59_0, l_59_4, l_59_2)
    end
    return l_59_4
  end

  if l_58_0 == nil or type(l_58_0) ~= "string" or #l_58_0 <= 4 then
    return 
  end
  if l_58_1 == nil then
    return 
  end
  if l_58_2 == nil then
    l_58_2 = 0
  end
  local l_58_4 = "FilePersistContextToMpAttribute.A"
  if l_58_3 ~= nil then
    l_58_4 = l_58_3
  end
  local l_58_5 = "BM_M"
  local l_58_6 = nil
  -- DECOMPILER ERROR at PC37: Unhandled construct in 'MakeBoolean' P1

  if type(l_58_1) == "string" and ValidateAddTechniqueInput(l_58_0, l_58_1, l_58_2) ~= nil then
    l_58_6 = true
  end
  if type(l_58_1) == "table" then
    for l_58_10,l_58_11 in ipairs(l_58_1) do
      if ValidateAddTechniqueInput(l_58_0, l_58_11, l_58_2) ~= nil then
        l_58_6 = true
      end
    end
  else
    do
      do return  end
      if l_58_6 then
        (MpCommon.AppendPersistContext)(l_58_0, l_58_4, l_58_2)
      end
      return l_58_6
    end
  end
end

checkParentProcessNameFromListByPPID = function(l_59_0, l_59_1)
  -- function num : 0_58
  if l_59_0 == nil or l_59_1 == nil then
    return 
  end
  if l_59_0:sub(1, 4) ~= "pid:" then
    l_59_0 = GetProcessPpidByScenario(l_59_0)
  end
  local l_59_2 = (mp.GetParentProcInfo)(l_59_0)
  if l_59_2 == nil then
    return 
  end
  local l_59_3 = (string.lower)(l_59_2.image_path)
  local l_59_4 = (string.match)(l_59_3, "([^\\]+)$")
  local l_59_5 = false
  -- DECOMPILER ERROR at PC40: Unhandled construct in 'MakeBoolean' P1

  if type(l_59_1) == "table" and l_59_1[l_59_4] ~= nil then
    l_59_5 = true
  end
  if type(l_59_1) == "string" and (string.find)(l_59_1, l_59_4, 1, true) ~= nil then
    l_59_5 = true
  end
  return l_59_5, l_59_4
end

checkParentProcessNameFromListByPPIDRecursive = function(l_60_0, l_60_1, l_60_2)
  -- function num : 0_59
  if l_60_2 < 1 or l_60_0 == nil or l_60_1 == nil then
    return 
  end
  if l_60_0:sub(1, 4) ~= "pid:" then
    l_60_0 = GetProcessPpidByScenario(l_60_0)
  end
  local l_60_3 = (mp.GetParentProcInfo)(l_60_0)
  if l_60_3 == nil then
    return 
  end
  local l_60_4 = {}
  -- DECOMPILER ERROR at PC26: No list found for R4 , SetList fails

  -- DECOMPILER ERROR at PC27: Overwrote pending register: R5 in 'AssignReg'

  local l_60_5 = l_60_3
  for l_60_9 = 1, l_60_2 - 1 do
    l_60_5 = (mp.GetParentProcInfo)(l_60_5.ppid)
    if l_60_5 == nil then
      break
    end
    ;
    (table.insert)(l_60_4, l_60_5)
  end
  do
    local l_60_10 = false
    local l_60_11 = ""
    for l_60_15,l_60_16 in ipairs(l_60_4) do
      local l_60_17 = (string.lower)(l_60_16.image_path)
      local l_60_18 = (string.match)(l_60_17, "([^\\]+)$")
      -- DECOMPILER ERROR at PC69: Unhandled construct in 'MakeBoolean' P1

      if type(l_60_1) == "table" and l_60_1[l_60_18] ~= nil then
        l_60_10 = true
        l_60_11 = l_60_11 .. ";" .. l_60_18
      end
      if type(l_60_1) == "string" and (string.find)(l_60_1, l_60_18, 1, true) ~= nil then
        l_60_10 = true
        l_60_11 = l_60_11 .. ";" .. l_60_18
      end
    end
    return l_60_10, l_60_11
  end
end

IsLegacyOrgMachine = function()
  -- function num : 0_60
  local l_61_0 = {}
  l_61_0["9e8f722b-3aa1-4069-ab9f-fc8485ca4af9"] = true
  l_61_0["e333e141-0df0-4d49-8334-ce4a3d2b51cf"] = true
  l_61_0["a97898e3-0e7b-4c74-9c71-cf807c8a9eea"] = true
  l_61_0["ebc2ebcb-43e4-4f76-8c75-2be36bdead88"] = true
  l_61_0["fff415a5-d876-4e19-af91-a430fb7df00a"] = true
  l_61_0["0b20fcfe-9850-4391-aff0-75075c0dbb1a"] = true
  l_61_0["3b7984a2-ac4f-44ab-aefb-e0673362ee6a"] = true
  l_61_0["0b11e29f-70a9-4c86-8858-55b9f37e3020"] = true
  l_61_0["194c1c9f-90d1-40c8-9ba5-7fa5a43617f9"] = true
  l_61_0["c1ed41b8-316f-4206-8655-2039a416ecf1"] = true
  l_61_0["831aa694-4c12-49b5-9949-a4976dc1d67d"] = true
  l_61_0["43a876e1-c5f3-4bcb-be8f-a0e405839830"] = true
  l_61_0["93576e31-5469-4e26-a549-3a18220dc565"] = true
  l_61_0["f3b27d4b-1c32-4f7a-b947-7a67617a319f"] = true
  l_61_0["331f9d38-ce30-4a30-94c1-f70ab226d869"] = true
  l_61_0["19361904-3386-43a8-961b-e86764aea86b"] = true
  l_61_0["b49066f2-d2ca-44c6-a197-b75bb646b99f"] = true
  l_61_0["66da7d04-65b9-4832-9cc1-5e9c5af5327c"] = true
  l_61_0["4529e5c0-f3aa-4be7-a530-9ab6a3735062"] = true
  l_61_0["0a7b537b-2304-49bf-b124-14194e13737b"] = true
  l_61_0["23dc6e7f-39ea-45a4-a5b5-86d4223d3042"] = true
  l_61_0["e0413d41-3502-4db1-9039-c88af24ead06"] = true
  l_61_0["4574428d-d2dc-47e6-ae9f-9e24438c82e7"] = true
  l_61_0["e17a58f3-7283-464c-a452-eb64ad83ec97"] = true
  l_61_0["68521817-d140-4b74-a14f-eed29027e376"] = true
  l_61_0["072b5815-bdf9-4765-bc12-6d049ae4efff"] = true
  l_61_0["bcb207b2-cc60-4212-9043-d12afadb0fbc"] = true
  l_61_0["49892dca-c126-4dac-95e7-f5757cccc16a"] = true
  l_61_0["74e61dec-e6ab-4d90-91b1-ba372a703e06"] = true
  l_61_0["2257c4e1-c3b0-439a-9119-fb2d0552bb43"] = true
  l_61_0["3676a7b6-192c-4f13-a3ec-b0afab8f8d2b"] = true
  l_61_0["fb85f5cc-d3fa-4d69-b25f-38f49233ef37"] = true
  l_61_0["665a0743-4170-4383-b6ba-28935c57d01b"] = true
  l_61_0["5ee978e9-163e-4d1e-b53a-61a36ba2b18a"] = true
  l_61_0["7f050e73-5a3d-4813-85af-82422a793fad"] = true
  l_61_0["9cc53ef5-7b0f-4aad-879c-8c7928b10dbe"] = true
  l_61_0["94deb9b0-3515-48d3-8f59-0f596d5bb090"] = true
  l_61_0["56dcd088-5605-4d08-b572-a504cf4dae65"] = true
  l_61_0["174fa9ca-e8dd-4ae6-bcd8-8cb2f2204f95"] = true
  l_61_0["932f5304-5c67-4d54-b103-b78bf287a2c3"] = true
  l_61_0["a58b13d8-a8f3-4b11-b655-2d93970f6374"] = true
  l_61_0["e53d4363-125e-4fdb-9135-f4bd0b35568e"] = true
  l_61_0["d7c7c745-195f-4223-9c7a-99fb420fd000"] = true
  l_61_0["5027d848-972a-4730-90b8-c684eff2122c"] = true
  l_61_0["45575928-30c1-4b72-8bf9-0d19cc13e52c"] = true
  l_61_0["50da504b-557b-4e97-beab-4c91dfb8c56d"] = true
  l_61_0["0267a949-b82d-4347-b173-660c76e30da6"] = true
  l_61_0["64032f4d-626a-4a92-ae42-d693ef078591"] = true
  l_61_0["4a7a5002-cd9d-4b70-ad48-f8c53f86145b"] = true
  l_61_0["8645a59d-7655-442b-9c39-bffe1294f8cb"] = true
  l_61_0["ba8974ba-9b35-4ad0-8413-8ac01f765545"] = true
  l_61_0["336876bb-1a0d-43f5-bf32-ce406f723b5e"] = true
  l_61_0["02504642-40b7-40dd-bb23-d393ce4cc043"] = true
  l_61_0["6d73cb3c-f9ca-4fd1-a357-695eb0fb8d5b"] = true
  l_61_0["68c53d9c-8e07-4f7e-9b50-2b70499b95d0"] = true
  l_61_0["d9390c80-4dad-4cc5-80c6-5da2bd33d673"] = true
  l_61_0["4338bd78-8653-4e6f-b8cf-893b6b5dca63"] = true
  l_61_0["238b89a1-be2f-4939-91dd-173c76c18095"] = true
  l_61_0["0112e007-42b5-4355-ac50-01f8b6f60daa"] = true
  l_61_0["6d4e7515-41ef-43fc-96f8-27e2fd492a19"] = true
  l_61_0["f2c2c063-9ed1-4f73-a624-1d8fca3ee19e"] = true
  l_61_0["b7f116fa-c0c0-4e37-aa6d-64790ea61007"] = true
  l_61_0["109420d0-e127-480e-aad0-20bb832d9709"] = true
  l_61_0["e2882248-03d6-4da2-87f7-da8967cf4672"] = true
  l_61_0["d06d867f-fbea-4112-aec2-a437ff86bbfd"] = true
  l_61_0["0ca80520-ab29-4a0a-86ae-e4f834611541"] = true
  l_61_0["209400ca-9614-45e3-a14b-070d8d339b9e"] = true
  l_61_0["26496fc8-a570-42b7-be89-a82840a08cbb"] = true
  l_61_0["0b23e19e-541d-4cb3-89f4-419bc9c593a6"] = true
  l_61_0["d0dc6b38-53fa-4bc6-949f-6d9dbe2d0024"] = true
  l_61_0["6b763308-b0e7-415e-b1d6-4ed29c8d0155"] = true
  l_61_0["864d05f5-3f47-4fb0-aecd-3d75ccd0de94"] = true
  l_61_0["7b5315ed-6572-462d-8284-189038da8165"] = true
  l_61_0["c7d04a61-5996-49a0-ae1b-f057623509c3"] = true
  l_61_0["952d5943-138b-4d48-a5f3-078526a57c5d"] = true
  l_61_0["c2cc1990-5094-4e7e-ab4f-65af1c52df24"] = true
  l_61_0["aea7413a-28a8-48ef-a443-4c5c27161cb9"] = true
  l_61_0["0831a921-cf12-4ecf-a3a2-0aeaba8ed268"] = true
  l_61_0["f74b2f70-3ee6-4410-aca1-fa7f6696907a"] = true
  l_61_0["fcfb1e78-be1a-45a2-b166-1e6c088ab4df"] = true
  l_61_0["9d0004e6-2aeb-46ed-ac66-42719249fbfd"] = true
  l_61_0["9e7cdd29-13c8-42c6-b852-6ad49cb47be6"] = true
  l_61_0["7978aa21-cbb0-431f-8048-b6fe6a372187"] = true
  l_61_0["51401eaf-db7b-410e-9830-aaf6170095d1"] = true
  l_61_0["e8869022-0cda-47b4-98a0-2e481fa8bb39"] = true
  l_61_0["9e2558e3-1b29-4bb1-9aa9-00f0bbf7df7a"] = true
  l_61_0["229ff4d6-9334-4f5b-a766-b89c5cd7493a"] = true
  l_61_0["48aa7ccc-e241-4c9c-8c74-2f60aac9f1af"] = true
  l_61_0["e6d6bc19-a278-42e4-a2c9-de0dc3107cb1"] = true
  l_61_0["e338937b-e3b8-4023-b9df-48372faa73b1"] = true
  l_61_0["efa9c680-5281-4eeb-8760-fbe4a02c1cdf"] = true
  l_61_0["a36f0250-09a4-4a6e-afc8-146c8d0f2523"] = true
  l_61_0["2fb7ef2c-b321-471f-8f3f-def24ce84c96"] = true
  l_61_0["8c450d96-3c8c-4fd7-b212-b194b86aeb0b"] = true
  l_61_0["6aafad28-3462-4c54-9fa2-05525d654885"] = true
  l_61_0["d7d1b4c2-d239-42be-aff7-f77bf22bc50a"] = true
  l_61_0["84da20cd-3dad-4d27-b1a1-e4c2da9fe3de"] = true
  l_61_0["d8c1a97c-1989-47f1-bad7-f61fc9fec10f"] = true
  l_61_0["17c4f810-b36a-4b9b-b522-6ffa44933865"] = true
  l_61_0["bf4cd6de-a593-46de-8705-e89a98a1a51b"] = true
  l_61_0["c14ea10d-54bf-42d7-848c-cc9c895f8a0c"] = true
  l_61_0["26b0eb5d-5020-4a63-b60f-16cabf0b5f50"] = true
  l_61_0["f42f4b2b-f13a-4c8b-881a-6f1ffb1aa266"] = true
  l_61_0["f11c8ce9-2021-4261-b39b-a1b99ca660d4"] = true
  l_61_0["cdd251fe-9ff1-4da0-82f8-b2f559040782"] = true
  l_61_0["0eb1e5d9-3dd3-4038-833e-834da63e8625"] = true
  l_61_0["692555dd-b6cc-468f-9b4e-951f039ad383"] = true
  l_61_0["06c1f48d-d514-415e-b385-713d1283a52d"] = true
  l_61_0["1fa3fe7c-5db3-4537-9622-d1636572a18d"] = true
  l_61_0["f16bd8a4-0f46-4633-aaae-048665ff9d56"] = true
  l_61_0["207f432c-cb0c-483d-b407-2769b035f309"] = true
  l_61_0["760925bc-cf36-40b7-bb44-c784fd7220c7"] = true
  l_61_0["7742aae5-2519-4ec1-98e5-56c231438f79"] = true
  l_61_0["629c1926-47fd-4a94-b2db-1f69647460ff"] = true
  l_61_0["2a0e6866-eb55-4558-a3e6-9946ac41f870"] = true
  l_61_0["29a97a64-bd43-4ce6-aaea-3982b1542e93"] = true
  l_61_0["1e3b04c1-46c0-43e2-b456-d02c67cbfb6b"] = true
  l_61_0["72c339fc-1375-4814-a4e3-f7fb7e8c8cf1"] = true
  l_61_0["6b2d7646-e0df-42db-b5ee-4e228e0d6488"] = true
  l_61_0["863e9bf6-e7c5-47e6-a63e-f94ef9f6ebe0"] = true
  l_61_0["a62a1460-a7bd-4d81-87e4-f459245de4ad"] = true
  l_61_0["bb58c89e-34d4-48eb-b965-8990bfab8d0f"] = true
  l_61_0["fd0c1195-045d-48bf-92fc-0f241e525c3d"] = true
  l_61_0["717551f8-5e59-45fe-aebe-eb3abd64cfec"] = true
  l_61_0["7d32b9ed-c15f-486b-95bb-125216f5f7e7"] = true
  l_61_0["a1984def-d4e6-476f-895f-6a6837704502"] = true
  l_61_0["7eaf2863-7a12-4d95-8674-96407f926580"] = true
  l_61_0["e89ae3b9-fa0c-43b2-b94a-61910e07d57d"] = true
  l_61_0["583ad211-3e4b-4b8d-a903-9ef1cdfd8ff7"] = true
  l_61_0["d9a18c49-7d30-4a5a-b58d-a0d124625781"] = true
  l_61_0["df391576-f230-45b2-8d4f-03c3bacfabdd"] = true
  l_61_0["52709bd7-7299-41a7-8b26-a0f6f80e1828"] = true
  l_61_0["d884ee3c-20ae-4fee-b7be-719717882a61"] = true
  l_61_0["89ece62e-abcc-49f3-9493-2e960aeddf09"] = true
  l_61_0["7682190b-f1a4-494b-8bce-8854ab1f30ed"] = true
  l_61_0["24a2479a-cecb-4c12-b83d-d5d6bc7d5c9a"] = true
  l_61_0["7b003a1e-32d8-4d0c-b89e-b3f830ef9298"] = true
  l_61_0["d33f1674-ec6e-4d30-9580-0f3a7fe9192d"] = true
  l_61_0["482e5bc7-e3a3-470d-90df-5ae60e66de63"] = true
  l_61_0["2fd18d75-7637-46c5-a38a-6fa157c323cd"] = true
  l_61_0["dd03a6fe-556b-4162-aba3-1b967b71505c"] = true
  l_61_0["a449ec79-829f-4a14-8ed4-c46d20cf7e98"] = true
  l_61_0["73194067-7f1f-4f59-9a91-c513f9674595"] = true
  l_61_0["142c86bb-2ee0-417d-8ebd-798e1b9168f1"] = true
  l_61_0["bcdb10c5-56eb-47f4-a6b5-6c4b2dbeb995"] = true
  l_61_0["557ac93d-2be7-43a5-a6a4-c58541c95d17"] = true
  l_61_0["8eaddf99-40ac-499c-96bf-3f88d9729ed8"] = true
  l_61_0["772b3e06-dce8-4c91-b82a-eb416497d1de"] = true
  l_61_0["cc391f9b-f27c-41cb-ba4f-15e91c636b19"] = true
  l_61_0["01fe0665-1ce5-4583-bafe-f2bf8a6a73d0"] = true
  l_61_0["d5d90bec-2758-42d0-bf56-02d956bf135c"] = true
  l_61_0["1bf8c75c-9326-4e7e-9dd3-5c1892c0ffc3"] = true
  l_61_0["b0272ed6-629f-42e9-bef5-3b879cf44196"] = true
  l_61_0["40a6c58e-df9e-46a2-b702-2f0e11c8470b"] = true
  l_61_0["c0bd6124-45c1-4996-924c-46167a59a818"] = true
  l_61_0["d3e3a858-f780-4d2c-b8e8-22d79d916ec1"] = true
  l_61_0["4ade8f48-1ef2-47f8-b554-daacc40fd518"] = true
  l_61_0["e3186a6e-fb5c-43b4-b5be-3d1ee0ebf674"] = true
  l_61_0["c2773dc2-bddd-44a8-b797-e12e0e64cb8e"] = true
  l_61_0["9022e75e-dfe8-4dcb-bd7a-df2a8168ac8d"] = true
  l_61_0["277894f2-d95f-41b8-b7ac-9b9bc223031c"] = true
  l_61_0["1b9d508b-eb79-4d91-9f66-dadb514ab39c"] = true
  l_61_0["03812f4b-e4df-4e71-a7e9-02e02301c4b1"] = true
  l_61_0["922ad644-d59b-4338-a818-0d6314a78536"] = true
  l_61_0["f626ea2f-6a93-4850-bfa7-9018adb65582"] = true
  l_61_0["86486b45-9fab-4b60-8ff6-d5477783a825"] = true
  l_61_0["53e28208-6aac-4f9b-8d60-f4a9e05c8774"] = true
  l_61_0["4cbb9f77-ea9f-41a0-b52a-960ac2dc5f01"] = true
  l_61_0["c85a1588-d8b9-4c80-83a0-d6a87be9b712"] = true
  l_61_0["ac94ef0a-20cd-43aa-8924-6bd156ecd6f0"] = true
  l_61_0["27823e87-5194-40fa-a692-e3aefa2faa16"] = true
  l_61_0["83d70c4c-fcb9-4de9-9880-2c34b95f0439"] = true
  l_61_0["187d8278-def1-4813-8a1d-3614e9fcdbb4"] = true
  l_61_0["e2741811-7cad-4941-a6d6-a090d7a11253"] = true
  l_61_0["a9e4e1ae-044e-4b18-85ba-b1e40d43b511"] = true
  l_61_0["f576af69-ad0b-4fef-ba5f-33a21773df43"] = true
  l_61_0["8081f7dc-c79d-415d-8a14-dda42304d1a4"] = true
  l_61_0["d148c7f3-45f0-4a78-8647-b46b2cac7b64"] = true
  l_61_0["02781b2f-3388-4de3-ac1e-34d8a69b4b9d"] = true
  l_61_0["a10a291b-4384-4161-98de-81e52f69df88"] = true
  l_61_0["c31b3172-0a24-439d-9289-19a636ca8084"] = true
  l_61_0["e5b09fc4-d1d9-42ff-a826-91792c600b87"] = true
  l_61_0["f011ea84-bfc4-4e3a-b313-2eb3519586ec"] = true
  l_61_0["d79e04ae-7499-4740-8bfa-a871fae7f415"] = true
  l_61_0["0a22f1df-85ef-4b8e-ad38-641b33651e9d"] = true
  l_61_0["fa9b0987-a412-4c68-9624-0909df6ee8c1"] = true
  l_61_0["5df1c174-1f0f-4a02-b449-e1fc85d2370a"] = true
  l_61_0["ec1154b2-d473-41a0-b914-d27b2bf64ac8"] = true
  l_61_0["de8ad6e8-f9f2-45f4-b7dd-be2fda319016"] = true
  l_61_0["e9cf8e43-27d7-47a9-a79d-2e04141762a7"] = true
  l_61_0["50b7f255-6811-4f15-80ac-ffbab20c5878"] = true
  l_61_0["551a8a43-bd4f-4ee0-82ac-0a3336533959"] = true
  l_61_0["ae71b458-f29f-4887-9204-d01d649088bb"] = true
  l_61_0["ecb93044-1c56-489a-a5cd-7a5acfbf53d5"] = true
  l_61_0["5a324dde-dcb5-4e3a-b2c1-1fdc6c60d48e"] = true
  l_61_0["a6454b24-1b9a-4dc0-974b-c3fe4bf71f2a"] = true
  l_61_0["b001a172-4636-4058-82a4-88803b90eb08"] = true
  l_61_0["67bad259-d464-44e7-b65c-83905665dd84"] = true
  l_61_0["2a4e6c81-1a1e-4bee-9c8a-a7ac7b9e8d9e"] = true
  l_61_0["457cf4d7-3847-4e71-9140-436a62db100c"] = true
  l_61_0["b9d143cb-d802-43bb-a820-9790c501e286"] = true
  l_61_0["07aebed2-fa9b-4da3-bde1-a4e53168030f"] = true
  l_61_0["88598bde-cc7f-42cd-b32d-5423c5faf3ba"] = true
  l_61_0["c7ec637c-878a-4f01-8c2c-b5cd6da7b836"] = true
  l_61_0["1f14b09f-9477-4311-8aa0-4b103e996cdb"] = true
  l_61_0["88409457-5141-4c6a-9654-386e5f9dfc7a"] = true
  l_61_0["d45a1e7f-069a-44ce-863d-996b3afc8a32"] = true
  l_61_0["b609c345-933c-4cfd-9dbf-4923a6e25f73"] = true
  l_61_0["cf12250b-0606-4ccb-886a-0938c73de778"] = true
  l_61_0["f3588a11-f071-4990-91be-1f99e816f9b6"] = true
  l_61_0["b423ea88-8ed1-4b93-a7bd-04d80eb90ee1"] = true
  l_61_0["73604805-290b-4930-b64d-c10694aca30c"] = true
  l_61_0["da31a007-6033-43a1-bbc4-566981c87dbd"] = true
  l_61_0["6c88703a-ff48-419b-a8f0-42effae4881b"] = true
  l_61_0["81ffcd20-4c13-4353-94d6-885c1c96f4a1"] = true
  l_61_0["a3906bc6-a3b6-4e49-bd0f-c0bff3e648e8"] = true
  l_61_0["95034fa2-fe1f-489d-8ecc-827deb470cec"] = true
  l_61_0["34f75caf-f95c-4149-bb5c-091730d4ade3"] = true
  l_61_0["68420a91-f498-481c-9dc1-f957f15fcc65"] = true
  l_61_0["efa6410a-b0a6-40be-9b26-69e397f22dd4"] = true
  l_61_0["73e3f0fb-cebd-4d0d-b0a3-b82bcd7d7684"] = true
  l_61_0["1ef3488a-db57-4847-abb5-a5b3aee8f942"] = true
  l_61_0["367f773d-1bd7-4b11-9e2d-14248dce10e7"] = true
  l_61_0["0ac1bd10-462e-43ba-9740-f12e7ba862ce"] = true
  l_61_0["0ca6e27d-1eff-4640-af51-f60da7b266e0"] = true
  l_61_0["e0c79e35-7c39-49f6-8650-edcc69aaba61"] = true
  l_61_0["078d14d5-bba0-4c1e-86ea-fe726b17aa59"] = true
  l_61_0["de48c3c7-1162-479d-b727-b9a7a1f27ebb"] = true
  l_61_0["9f9ad922-1c9b-4b26-a2a7-b8fe2ce243b1"] = true
  l_61_0["fa21229b-8de2-4e42-8176-23518d5fee8e"] = true
  l_61_0["00767538-3aeb-47f5-b21e-068eaa2d3585"] = true
  l_61_0["cda6a59a-bdd7-4269-a89a-cfe0cc035844"] = true
  l_61_0["e0f54a9a-e7c7-4139-a528-7e616a808425"] = true
  l_61_0["1cbdbd86-9676-4a69-8266-75550389e512"] = true
  l_61_0["5240d2ad-529b-4ff2-be61-24c22e2dc223"] = true
  l_61_0["9508acec-64bb-4c8b-b777-e4623ed552c4"] = true
  l_61_0["2baef0fb-732b-48be-8b05-8378c32b3863"] = true
  l_61_0["ec086568-3b10-43b7-acf7-4a2822fc8663"] = true
  l_61_0["c9093900-b1d3-42c7-808b-5b7e0da66ca4"] = true
  l_61_0["a3830578-0653-45ea-9095-97da11450d60"] = true
  l_61_0["5ad249ba-02d7-4358-8475-a9c880d5ac2e"] = true
  l_61_0["7c219fe2-6478-45bc-b1b3-5c6e782bdb91"] = true
  l_61_0["3930f511-4397-44c1-aa4e-35bfc85b3412"] = true
  l_61_0["9c692ae1-ba89-46b4-9917-6d9a4cbb12b3"] = true
  l_61_0["f562fd84-a462-4425-a835-761be8c9d403"] = true
  l_61_0["abae58f7-d355-46e7-9be3-c37a9b70bb5a"] = true
  l_61_0["e18a8e9d-0168-4175-9f80-8886b3cd1316"] = true
  l_61_0["083d3fb1-ce12-4ba4-ae1d-8efd37e2c0f4"] = true
  l_61_0["5e25bb3b-ef5e-4757-97ca-7187daf43243"] = true
  l_61_0["49739652-cc07-49c3-8b31-0c7eb0d0f4dc"] = true
  l_61_0["add9e0a6-9239-4ceb-ac67-c7e9358f58e3"] = true
  l_61_0["dd8fc33b-7a0f-4243-a4fa-5df4600bfcb6"] = true
  l_61_0["d60f87ec-db7d-4372-bc31-c770b7382f93"] = true
  l_61_0["f35d5ad5-45af-41b0-9d28-0f73e845187b"] = true
  l_61_0["1cf3c410-ef90-4f2d-b20d-a56b16de0e83"] = true
  local l_61_1 = "090b3ee2-3ac6-46b9-ba96-7a3b8a81cd1f"
  l_61_0[l_61_1] = true
  l_61_1 = "cfca059b-1611-4471-b00e-6670b6cc60ca"
  l_61_0[l_61_1] = true
  l_61_1 = "c677c28d-2c94-49ef-a250-5099ed00cea8"
  l_61_0[l_61_1] = true
  l_61_1 = "7d8df643-d167-4f22-bb7b-512e3fdbb275"
  l_61_0[l_61_1] = true
  l_61_1 = "46449c61-d6a2-45fa-8851-5fa8a46d5ed2"
  l_61_0[l_61_1] = true
  l_61_1 = "40222833-e511-47af-9324-40c4531ba777"
  l_61_0[l_61_1] = true
  l_61_1 = "6d219195-ecf9-401b-9892-3568b7ee1833"
  l_61_0[l_61_1] = true
  l_61_1 = "27d074db-bf2f-4c3d-a19d-498603494a51"
  l_61_0[l_61_1] = true
  l_61_1 = versioning
  l_61_1 = l_61_1.GetOrgID
  l_61_1 = l_61_1()
  local l_61_2 = false
  if l_61_1 ~= nil and l_61_0[l_61_1] == true then
    l_61_2 = true
  end
  return l_61_2, l_61_1
end

isLolbinFilename = function(l_62_0)
  -- function num : 0_61
  local l_62_1 = {}
  l_62_1["cmd.exe"] = true
  l_62_1["powershell.exe"] = true
  l_62_1["wscript.exe"] = true
  l_62_1["cscript.exe"] = true
  l_62_1["mshta.exe"] = true
  l_62_1["wmic.exe"] = true
  l_62_1["bitsadmin.exe"] = true
  local l_62_2 = (string.match)(l_62_0, "([^\\]+)$")
  local l_62_3 = false
  if l_62_1[l_62_2] then
    l_62_3 = true
  end
  return l_62_3, l_62_2
end

isLolbinFile = function(l_63_0)
  -- function num : 0_62
  do
    local l_63_1 = {}
    -- DECOMPILER ERROR at PC17: No list found for R1 , SetList fails

    -- DECOMPILER ERROR at PC18: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC19: Overwrote pending register: R3 in 'AssignReg'

    for l_63_5,l_63_6 in ("\\system32\\cmd.exe")("\\system32\\windowspowershell\\v1.0\\powershell.exe") do
      -- DECOMPILER ERROR at PC22: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC24: Overwrote pending register: R8 in 'AssignReg'

      -- DECOMPILER ERROR at PC25: Overwrote pending register: R9 in 'AssignReg'

      if (("\\system32\\wbem\\wmic.exe").sub)("\\system32\\bitsadmin.exe", -"\\system32\\mshta.exe") == l_63_6 then
        return true
      end
    end
    do return false end
    -- WARNING: undefined locals caused missing assignments!
  end
end

TrackCommandLineAndTechniqueMain = function(l_64_0, l_64_1, l_64_2, l_64_3)
  -- function num : 0_63
  validateTechnique = function(l_65_0)
    -- function num : 0_63_0
    if l_65_0 == nil or #l_65_0 <= 3 then
      return 
    end
    local l_65_1 = (string.lower)(l_65_0)
    local l_65_2 = "bm_m"
    if (string.sub)(l_65_1, 1, 1) == "t" then
      return l_65_0
    else
      if (string.sub)(l_65_1, 1, #l_65_2) == l_65_2 then
        local l_65_3 = string.sub
        local l_65_4 = l_65_0
        local l_65_5 = #l_65_2 + 1
        do
          local l_65_6 = #l_65_0
          do return l_65_3(l_65_4, l_65_5, l_65_6) end
          -- DECOMPILER ERROR at PC37: Confused about usage of register R4 for local variables in 'ReleaseLocals'

          do return  end
          -- DECOMPILER ERROR at PC38: Confused about usage of register R3 for local variables in 'ReleaseLocals'

        end
      end
    end
  end

  if l_64_0 == nil or type(l_64_0) ~= "string" or #l_64_0 <= 1 or l_64_1 == nil then
    return 
  end
  if l_64_2 == nil then
    l_64_2 = 0
  end
  local l_64_4 = "CommandLineCustomHash"
  if l_64_3 ~= nil then
    l_64_4 = l_64_3
  end
  local l_64_5 = getCustomStringHash(l_64_0)
  if l_64_5 == nil then
    return 
  end
  local l_64_6 = l_64_4 .. ":" .. l_64_5
  local l_64_7 = false
  if type(l_64_1) == "string" then
    local l_64_8 = validateTechnique(l_64_1)
    if l_64_8 ~= nil then
      (MpCommon.AppendPersistContextNoPath)(l_64_6, l_64_8, l_64_2)
      l_64_7 = true
    end
  else
    do
      if type(l_64_1) == "table" then
        for l_64_12,l_64_13 in ipairs(l_64_1) do
          local l_64_14 = validateTechnique(l_64_13)
          if l_64_14 ~= nil then
            (MpCommon.AppendPersistContextNoPath)(l_64_6, l_64_14, l_64_2)
            l_64_7 = true
          end
        end
      end
      do
        return l_64_7
      end
    end
  end
end

TrackCommandLineAndTechnique = function(l_65_0, l_65_1, l_65_2, l_65_3, l_65_4)
  -- function num : 0_64
  if l_65_0 == nil or type(l_65_0) ~= "string" or #l_65_0 <= 1 or l_65_1 == nil then
    return 
  end
  if l_65_4 == nil then
    l_65_4 = true
  end
  local l_65_5, l_65_6 = nil, nil
  l_65_5 = TrackCommandLineAndTechniqueMain(l_65_0, l_65_1, l_65_2, l_65_3)
  if l_65_5 == true then
    TrackCommandLineAndTechniqueMain(l_65_0, "T0000:track_cmdline", l_65_2, l_65_3)
  end
  local l_65_7, l_65_8 = resolve_mainbinary_from_commandline(l_65_0)
  if l_65_4 == true and l_65_8 == true then
    l_65_6 = TrackCommandLineAndTechniqueMain(l_65_7, l_65_1, l_65_2, l_65_3)
    if l_65_6 == true then
      TrackCommandLineAndTechniqueMain(l_65_7, "T0000:track_cmdline", l_65_2, l_65_3)
    end
  end
  return l_65_5, l_65_6
end

resolve_command_fullpath = function(l_66_0)
  -- function num : 0_65
  if l_66_0 == nil or #l_66_0 <= 1 then
    return 
  end
  local l_66_1 = {}
  l_66_1.cmd = "%windir%\\system32\\cmd.exe"
  l_66_1.powershell = "%windir%\\system32\\windowspowershell\\v1.0\\powershell.exe"
  l_66_1.wscript = "%windir%\\system32\\wscript.exe"
  l_66_1.cscript = "%windir%\\system32\\cscript.exe"
  l_66_1.mshta = "%windir%\\system32\\mshta.exe"
  l_66_1.wmic = "%windir%\\system32\\wbem\\wmic.exe"
  l_66_1.bitsadmin = "%windir%\\system32\\bitsadmin.exe"
  l_66_1.rundll32 = "%windir%\\system32\\rundll32.exe"
  l_66_1.svchost = "%windir%\\system32\\svchost.exe"
  l_66_1.services = "%windir%\\system32\\services.exe"
  l_66_1.reg = "%windir%\\system32\\reg.exe"
  l_66_1.regsvr32 = "%windir%\\system32\\regsvr32.exe"
  l_66_1.regedit = "%windir%\\regedit.exe"
  l_66_1.schtasks = "%windir%\\system32\\schtasks.exe"
  l_66_1["%comspec%"] = "%windir%\\system32\\cmd.exe"
  if #l_66_0 > 4 and (string.sub)(l_66_0, -4) == ".exe" then
    l_66_0 = (string.sub)(l_66_0, 1, #l_66_0 - 4)
  end
  l_66_0 = (string.lower)(l_66_0)
  local l_66_2 = l_66_1[l_66_0]
  if l_66_2 ~= nil then
    l_66_2 = (mp.ContextualExpandEnvironmentVariables)(l_66_2)
  end
  return l_66_2
end

resolve_mainbinary_from_commandline = function(l_67_0)
  -- function num : 0_66
  if l_67_0 == nil or #l_67_0 <= 4 or (string.sub)(l_67_0, 1, 2) == "\\\\" or (string.sub)(l_67_0, 2, 3) == ":\\" or (string.find)(l_67_0, " ", 1, true) == nil then
    return l_67_0, false
  end
  local l_67_1 = (string.match)(l_67_0, "^(.-)%s")
  if l_67_1 == nil then
    return l_67_0, false
  end
  local l_67_2 = resolve_command_fullpath(l_67_1)
  if l_67_2 == nil then
    return l_67_0, false
  end
  local l_67_3 = l_67_2 .. (string.sub)(l_67_0, #l_67_1 + 1, #l_67_0)
  return l_67_3, true
end

GetTechniquesFromTrackedCommandLine = function(l_68_0, l_68_1)
  -- function num : 0_67
  if l_68_0 == nil then
    return 
  end
  local l_68_2 = "CommandLineCustomHash"
  if l_68_1 ~= nil then
    l_68_2 = l_68_1
  end
  local l_68_3 = getCustomStringHash(l_68_0)
  if l_68_3 == nil then
    return 
  end
  local l_68_4 = l_68_2 .. ":" .. l_68_3
  if (MpCommon.GetPersistContextCountNoPath)(l_68_4) >= 1 then
    local l_68_5 = MpCommon.GetPersistContextNoPath
    local l_68_6 = l_68_4
    do return l_68_5(l_68_6) end
    -- DECOMPILER ERROR at PC28: Confused about usage of register R6 for local variables in 'ReleaseLocals'

  end
  do return  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register R5 for local variables in 'ReleaseLocals'

end

IsCommandLineTracked = function(l_69_0, l_69_1, l_69_2)
  -- function num : 0_68
  if l_69_0 == nil then
    return 
  end
  if l_69_2 == nil then
    l_69_2 = true
  end
  local l_69_3 = GetTechniquesFromTrackedCommandLine(l_69_0, l_69_1)
  if l_69_3 ~= nil then
    return true, l_69_3, l_69_0
  end
  local l_69_4, l_69_5 = resolve_mainbinary_from_commandline(l_69_0)
  do
    if l_69_2 == true and l_69_5 == true then
      local l_69_6 = GetTechniquesFromTrackedCommandLine(l_69_4, l_69_1)
      if l_69_6 ~= nil then
        return true, l_69_6, l_69_4
      end
    end
    return false
  end
end

IsCommandLineTrackedForTechnique = function(l_70_0, l_70_1, l_70_2, l_70_3)
  -- function num : 0_69
  FindStringInTable = function(l_71_0, l_71_1)
    -- function num : 0_69_0
    if l_71_0 == nil or l_71_1 == nil or type(l_71_1) ~= "table" then
      return 
    end
    local l_71_2 = (string.lower)(l_71_0)
    for l_71_6,l_71_7 in ipairs(l_71_1) do
      local l_71_8 = (string.lower)(l_71_7)
      if (string.find)(l_71_8, l_71_2, 1, true) then
        return true, l_71_7
      end
    end
    return false
  end

  if l_70_0 == nil or l_70_1 == nil then
    return 
  end
  if l_70_3 == nil then
    l_70_3 = true
  end
  local l_70_4 = GetTechniquesFromTrackedCommandLine(l_70_0, l_70_2)
  do
    if l_70_4 ~= nil then
      local l_70_5, l_70_6 = FindStringInTable(l_70_1, l_70_4)
      if l_70_5 == true then
        return true, l_70_6, l_70_0
      end
    end
    local l_70_7, l_70_8 = resolve_mainbinary_from_commandline(l_70_0)
    if l_70_3 == true and l_70_8 == true then
      local l_70_9 = GetTechniquesFromTrackedCommandLine(l_70_7, l_70_2)
      if l_70_9 ~= nil then
        local l_70_10, l_70_11 = FindStringInTable(l_70_1, l_70_9)
        if l_70_10 == true then
          return true, l_70_11, l_70_7
        end
      end
    end
    do
      return false
    end
  end
end

table_distinct_values = function(l_71_0)
  -- function num : 0_70
  if l_71_0 == nil or #l_71_0 == nil or #l_71_0 <= 1 then
    return l_71_0
  end
  local l_71_1 = {}
  ;
  (table.sort)(l_71_0)
  for l_71_5,l_71_6 in ipairs(l_71_0) do
    if l_71_6 ~= l_71_0[l_71_5 + 1] then
      (table.insert)(l_71_1, l_71_6)
    end
  end
  return l_71_1
end

get_filepaths_from_string = function(l_72_0)
  -- function num : 0_71
  if l_72_0 == nil or type(l_72_0) ~= "string" or #l_72_0 <= 3 then
    return 
  end
  local l_72_1 = (mp.GetExecutablesFromCommandLine)(l_72_0)
  if l_72_1 == nil or type(l_72_1) ~= "table" then
    l_72_1 = {}
  end
  local l_72_2 = (string.gmatch)(l_72_0, "(.:\\.-%.[a-z]+)")
  for l_72_6 in l_72_2 do
    (table.insert)(l_72_1, l_72_6)
  end
  local l_72_7 = (string.gmatch)(l_72_0, "(%%.-%.[a-z]+)")
  for l_72_11 in l_72_7 do
    local l_72_12 = (mp.ContextualExpandEnvironmentVariables)(l_72_11)
    if l_72_12 ~= nil then
      (table.insert)(l_72_1, l_72_12)
    end
  end
  local l_72_13 = (string.gmatch)(l_72_0, "[%s,]?(.-%.%a%a%a?)[%s,]?")
  local l_72_14 = (MpCommon.ExpandEnvironmentVariables)("%windir%")
  for l_72_18 in l_72_13 do
    if (string.find)(l_72_18, "\\", 1, true) == nil then
      local l_72_19 = l_72_14 .. "\\system32\\" .. l_72_18
      ;
      (table.insert)(l_72_1, l_72_19)
      local l_72_20 = l_72_14 .. "\\" .. l_72_18
      ;
      (table.insert)(l_72_1, l_72_20)
      local l_72_21 = l_72_14 .. "\\system32\\wbem\\" .. l_72_18
      ;
      (table.insert)(l_72_1, l_72_21)
      local l_72_22 = l_72_14 .. "\\system32\\windowspowershell\\v1.0\\" .. l_72_18
      ;
      (table.insert)(l_72_1, l_72_22)
    end
  end
  return l_72_1
end

IsProcNameInParentProcessTree = function(l_73_0, l_73_1, l_73_2)
  -- function num : 0_72
  if l_73_0 == nil or l_73_1 == nil then
    return 
  end
  local l_73_3 = l_73_0
  if l_73_0:sub(1, 4) ~= "pid:" then
    l_73_0 = GetProcessPpidByScenario(l_73_0)
  end
  if l_73_0 == nil then
    return nil
  end
  if l_73_2 == nil then
    l_73_2 = 5
  end
  local l_73_4 = l_73_0
  for l_73_8 = 1, l_73_2 do
    local l_73_9 = (mp.GetParentProcInfo)(l_73_4)
    if l_73_8 == 1 and (string.lower)(l_73_3) == "cmdhstr" then
      l_73_9 = (mp.GetParentProcInfo)()
    end
    if l_73_9 == nil then
      break
    end
    l_73_4 = l_73_9.ppid
    if l_73_4 == nil then
      break
    end
    if l_73_9.image_path ~= nil then
      local l_73_10 = (string.lower)(l_73_9.image_path)
      -- DECOMPILER ERROR at PC76: Unhandled construct in 'MakeBoolean' P1

      if type(l_73_1) == "string" and (string.sub)(l_73_10, -#l_73_1) == l_73_1 then
        return true, l_73_4, l_73_10, l_73_1, l_73_8
      end
    end
    if type(l_73_1) == "table" then
      for l_73_14,l_73_15 in ipairs(l_73_1) do
        if (string.sub)(l_73_10, -#l_73_15) == l_73_15 then
          return true, l_73_4, l_73_10, l_73_15, l_73_8
        end
      end
    end
  end
  do
    do return false end
    -- DECOMPILER ERROR at PC106: Confused about usage of register R6 for local variables in 'ReleaseLocals'

  end
end

TrackAttackerServer = function(l_74_0, l_74_1)
  -- function num : 0_73
  if not l_74_1 then
    l_74_1 = 3600
  end
  local l_74_2 = ExtractPartsFromUri(l_74_0)
  if l_74_2.host and l_74_2.host ~= "" then
    if GetRollingQueueKeyValue("SuspAttackServer", l_74_2.host) == nil then
      local l_74_3 = tostring(l_74_2.path)
    else
      do
        -- DECOMPILER ERROR at PC23: Confused about usage of register: R3 in 'UnsetPending'

        do
          local l_74_4, l_74_5 = l_74_3 .. "|" .. tostring(l_74_2.path)
          -- DECOMPILER ERROR at PC32: Confused about usage of register: R3 in 'UnsetPending'

          AppendToRollingQueue("SuspAttackServer", l_74_2.host, l_74_4, 3600)
        end
      end
    end
  end
end

IsHostAttackServer = function(l_75_0, l_75_1)
  -- function num : 0_74
  if not l_75_1 then
    l_75_1 = false
  end
  local l_75_2 = ExtractPartsFromUri(l_75_0)
  if l_75_2.host and l_75_2.host ~= "" then
    if not l_75_1 then
      l_75_1 = false
    end
    return IsKeyInRollingQueue("SuspAttackServer", l_75_2.host, l_75_1)
  end
  return false
end

IsDiscoveryCollectionThresholdMetLinux = function(l_76_0)
  -- function num : 0_75
  if l_76_0 == nil then
    return false
  end
  do
    if ((((((((((((((IsTechniqueObservedForPid(l_76_0, "T1057") or IsTacticObservedForPid(l_76_0, "Discovery_Process")) and IsTechniqueObservedForPid(l_76_0, "T1552")) or IsTacticObservedForPid(l_76_0, "CredentialAccess")) and IsTechniqueObservedForPid(l_76_0, "T1083")) or IsTacticObservedForPid(l_76_0, "Discovery_FileAndDirectoryDiscovery")) and IsTechniqueObservedForPid(l_76_0, "T1074")) or IsTacticObservedForPid(l_76_0, "Collection_DataStaged")) and IsTechniqueObservedForPid(l_76_0, "T1049")) or IsTacticObservedForPid(l_76_0, "Discovery_NetworkConnectionsDiscovery")) and IsTechniqueObservedForPid(l_76_0, "T1033")) or IsTacticObservedForPid(l_76_0, "Discovery_SystemOwnerUserDiscovery")) and IsTechniqueObservedForPid(l_76_0, "T1518")) or IsTacticObservedForPid(l_76_0, "Discovery_SoftwareDiscovery")) and IsTechniqueObservedForPid(l_76_0, "T1082")) or IsTacticObservedForPid(l_76_0, "Discovery_SystemInfoDiscovery") then
      local l_76_1 = 0 + 15 + 16 + 15 + 15 + 15 + 8 + 8 + 8
    end
    -- DECOMPILER ERROR at PC111: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC113: Confused about usage of register: R1 in 'UnsetPending'

    if 45 <= l_76_1 and l_76_1 <= 100 then
      return true
    end
    return false
  end
end

IsDetectionThresholdMetLinuxWrapper = function(l_77_0, l_77_1, l_77_2, l_77_3, l_77_4)
  -- function num : 0_76
  local l_77_5 = 0
  local l_77_6 = true
  local l_77_7 = nil
  if IsDetectionThresholdMetLinux(l_77_0) then
    return true
  end
  if l_77_6 then
    local l_77_8 = GetTacticsTableForPid(l_77_0)
    local l_77_9 = GetTechniquesTableForPid(l_77_0)
    if l_77_8 == nil or l_77_9 == nil then
      return false
    end
    for l_77_13,l_77_14 in pairs(l_77_8) do
      if l_77_13 ~= nil then
        if l_77_7 == nil then
          l_77_7 = l_77_13:lower()
        else
          l_77_7 = l_77_7 .. " | " .. l_77_13:lower()
        end
      end
      if l_77_14 ~= nil then
        l_77_5 = l_77_5 + l_77_14
      end
    end
    if l_77_7 ~= nil then
      if l_77_7:find("collection", 1, true) and l_77_7:find("discovery", 1, true) and l_77_7:find("exfiltration", 1, true) then
        return true
      end
      if (l_77_7:find("initialaccess", 1, true) or l_77_7:find("collection", 1, true) or l_77_7:find("discovery", 1, true) or l_77_7:find("execution", 1, true) or l_77_7:find("credentialaccess", 1, true) or l_77_7:find("defenseevasion", 1, true) or l_77_7:find("lateralmovement", 1, true) or l_77_7:find("privilegeescalation", 1, true)) and l_77_7:find("persistence", 1, true) and (l_77_7:find("exfiltration", 1, true) or l_77_7:find("commandandcontrol", 1, true)) then
        return true
      end
      if ((not l_77_7:find("collection", 1, true) and not l_77_7:find("discovery", 1, true) and not l_77_7:find("execution", 1, true)) or (not l_77_7:find("credentialaccess", 1, true) and not l_77_7:find("defenseevasion", 1, true) and not l_77_7:find("lateralmovement", 1, true)) or (l_77_7:find("persistence", 1, true) or l_77_7:find("exfiltration", 1, true) or l_77_7:find("commandandcontrol", 1, true))) then
        return true
      end
      if (l_77_7:find("initialaccess", 1, true) or l_77_7:find("collection", 1, true) or l_77_7:find("discovery", 1, true) or l_77_7:find("execution", 1, true) or l_77_7:find("credentialaccess", 1, true) or l_77_7:find("defenseevasion", 1, true) or l_77_7:find("lateralmovement", 1, true) or l_77_7:find("privilegeescalation", 1, true)) and l_77_7:find("exfiltration", 1, true) and l_77_7:find("commandandcontrol", 1, true) then
        return true
      end
    end
    do
      do
        if ((((((((((not l_77_7:find("initialaccess", 1, true) or l_77_7:find("execution", 1, true)) and not l_77_7:find("persistence", 1, true)) or l_77_7:find("privilegeescalation", 1, true)) and not l_77_7:find("defenseevasion", 1, true)) or l_77_7:find("credentialaccess", 1, true)) and not l_77_7:find("discovery", 1, true)) or l_77_7:find("lateralmovement", 1, true)) and not l_77_7:find("collection", 1, true)) or l_77_7:find("commandandcontrol", 1, true)) and not l_77_7:find("exfiltration", 1, true)) or l_77_7:find("impact", 1, true) then
          local l_77_15 = 0 + 1 + 1 + 2 + 1 + 1 + 1 + 1 + 2 + 1 + 2 + 2 + 2
        end
        -- DECOMPILER ERROR at PC386: Confused about usage of register: R10 in 'UnsetPending'

        -- DECOMPILER ERROR at PC388: Confused about usage of register: R10 in 'UnsetPending'

        if 4 <= l_77_15 and l_77_15 <= 17 then
          return true
        end
        return false
      end
    end
  end
end


