-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\43b3a4032352\0x00001470_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = GetRealPidForScenario(l_0_0.ppid)
local l_0_2 = {}
do
  if GetRollingQueueKeysAsString("Tech-" .. l_0_1) == nil then
    local l_0_3, l_0_4 = l_0_0.ppid .. " tech table missing"
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R3 in 'UnsetPending'

  l_0_2.TrackedPidTechniques = l_0_3
  do
    if GetRollingQueueKeysAsString("Tact-" .. l_0_1) == nil then
      local l_0_5 = nil
    end
    l_0_2.TrackedPidTactics = l_0_0.ppid .. " tact table missing"
    local l_0_6, l_0_7 = nil
    l_0_2.IsThresholdMet = tostring(GetDetectionThresholdMetLinuxReason(l_0_0.ppid))
    l_0_2.ThresholdMetReason = "000" .. tostring(R9_PC39)
    local l_0_8 = nil
    if safeJsonSerialize(l_0_2) ~= nil then
      (bm.add_related_string)(R9_PC39, safeJsonSerialize(l_0_2), bm.RelatedStringBMReport)
    end
    return mp.INFECTED
  end
end

