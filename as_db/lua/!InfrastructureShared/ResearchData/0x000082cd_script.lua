-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\ResearchData\0x000082cd_luac 

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

set_research_data = function(l_2_0, l_2_1, l_2_2)
  -- function num : 0_1
  if validate_research_data(l_2_0, l_2_1) == false then
    return false
  end
  if l_2_2 then
    (bm.add_related_string)(l_2_0, l_2_1, bm.RelatedStringBMReport)
  else
    local l_2_3 = "MpInternal_researchdata="
    local l_2_4 = l_2_3 .. l_2_0 .. "=" .. l_2_1
    ;
    (mp.set_mpattribute)(l_2_4)
  end
  do
    return true
  end
end

set_research_data_ex = function(...)
  -- function num : 0_2
  local l_3_1 = nil
  local l_3_2 = nil
  local l_3_3 = nil
  for l_3_7,l_3_8 in ipairs({...}) do
    local l_3_4, l_3_5 = , "MpInternal_researchdata="
    -- DECOMPILER ERROR at PC11: Confused about usage of register: R9 in 'UnsetPending'

    if .end % 2 == 1 then
      l_3_2 = R9_PC11
    else
      l_3_3 = R9_PC11
      if not validate_research_data(l_3_2, l_3_3) then
        return false
      end
      if l_3_9 <= 2 then
        l_3_5 = l_3_5 .. l_3_2 .. "=" .. l_3_3
      else
        -- DECOMPILER ERROR at PC34: Confused about usage of register: R10 in 'UnsetPending'

        l_3_5 = l_3_5 .. "," .. l_3_2 .. "=" .. l_3_3
      end
    end
  end
  -- DECOMPILER ERROR at PC40: Confused about usage of register: R4 in 'UnsetPending'

  ;
  (mp.set_mpattribute)(l_3_5)
  return true
end

do
  local l_0_0 = function()
  -- function num : 0_3
  return 3
end

  initRQFTAT = function()
  -- function num : 0_4 , upvalues : l_0_0
  local l_5_0 = "FTAT_STC"
  local l_5_1 = l_0_0()
  local l_5_2 = GetRollingQueue(l_5_0)
  local l_5_3 = (MpCommon.GetCurrentTimeT)()
  if l_5_2 == nil then
    for l_5_7 = 1, l_5_1 do
      AppendToRollingQueue(l_5_0, l_5_7, l_5_3, 157680000, 300)
    end
  else
    do
      if GetRollingQueueCount(l_5_0) ~= l_5_1 then
        local l_5_8 = {}
        for l_5_12 in pairs(l_5_2) do
          l_5_8[(l_5_2[l_5_12]).key] = true
        end
        for l_5_16 = 1, l_5_1 do
          if not l_5_8[l_5_16] then
            AppendToRollingQueue(l_5_0, l_5_16, l_5_3, 157680000)
          end
        end
      else
        do
          if l_5_3 - (l_5_2[1]).insert_time > 94608000 then
            for l_5_20 = 1, l_5_1 do
              local l_5_21 = (l_5_2[l_5_20]).insert_time
              AppendToRollingQueue(l_5_0, l_5_20, l_5_21, 157680000)
            end
          end
          do
            return 
          end
        end
      end
    end
  end
end

  isFirstTimeATActive = function()
  -- function num : 0_5
  if not (versioning.IsEnterprise)() and not (versioning.IsServer)() then
    return (versioning.IsSeville)()
  end
end

  updateToolID = function(l_7_0, l_7_1, l_7_2)
  -- function num : 0_6
  local l_7_3, l_7_4, l_7_5 = nil, nil, nil
  local l_7_6 = nil
  -- DECOMPILER ERROR at PC14: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC16: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC18: Confused about usage of register: R6 in 'UnsetPending'

  if IsKeyInRollingQueue("FTAT_" .. l_7_0 .. "_C", l_7_2, true) == true then
    AppendToRollingQueue("FTAT_" .. l_7_0 .. "_C", l_7_2, l_7_6, 157680000, 300)
    -- DECOMPILER ERROR at PC27: Confused about usage of register: R6 in 'UnsetPending'

    -- DECOMPILER ERROR at PC37: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC39: Confused about usage of register: R6 in 'UnsetPending'

    if IsKeyInRollingQueue("FTAT_" .. l_7_0 .. "_LT", l_7_2, true) == false then
      AppendToRollingQueue("FTAT_" .. l_7_0 .. "_LT", l_7_2, l_7_1, 157680000, 300)
      return l_7_6, R4_PC48
    end
  end
end

  -- WARNING: undefined locals caused missing assignments!
end

