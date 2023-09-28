-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000082b2_luac 

-- params : ...
-- function num : 0
BuildTokenLengthHistogram = function()
  -- function num : 0_0
  local l_1_0 = 0
  local l_1_1 = {}
  local l_1_2 = 128
  for l_1_6 = 0, mp.HEADERPAGE_SZ, l_1_2 do
    local l_1_7 = 0
    local l_1_8 = mp.HEADERPAGE_SZ - l_1_6
    do
      if l_1_8 <= 0 then
        local l_1_9 = {}
        -- DECOMPILER ERROR at PC17: No list found for R9 , SetList fails

        return l_1_9
      else
      end
      -- DECOMPILER ERROR at PC24: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC26: Overwrote pending register: R10 in 'AssignReg'

      -- DECOMPILER ERROR at PC28: Overwrote pending register: R11 in 'AssignReg'

      if l_1_8 < l_1_2 then
        local l_1_10 = tostring((l_1_0.readheader)(l_1_1, l_1_7))
        for l_1_14 in (string.gmatch)(l_1_10, "[^%!%+%0%,%;%(%)%[%]%:%.%=%\'\"\\x]+") do
          l_1_0 = l_1_0 + 1
          local l_1_15 = l_1_1[(string.len)(l_1_14)]
          if l_1_15 == 0 or l_1_15 == nil then
            l_1_1[(string.len)(l_1_14)] = 1
          else
            local l_1_16 = (string.len)(l_1_14)
            l_1_1[l_1_16] = l_1_15 + 1
          end
        end
        -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  do
    local l_1_17 = nil
    do return {l_1_0, l_1_1} end
    -- DECOMPILER ERROR at PC68: Confused about usage of register R5 for local variables in 'ReleaseLocals'

  end
end

BuildTokenCountHistogram = function()
  -- function num : 0_1
  local l_2_0 = 0
  local l_2_1 = {}
  local l_2_2 = {}
  l_2_2["!"] = 1
  l_2_2["+"] = 2
  l_2_2["0"] = 3
  l_2_2[","] = 4
  l_2_2[";"] = 5
  l_2_2["("] = 6
  l_2_2[")"] = 7
  l_2_2["["] = 8
  l_2_2["]"] = 9
  l_2_2[":"] = 10
  l_2_2["."] = 11
  l_2_2["="] = 12
  l_2_2["\'"] = 13
  l_2_2["\""] = 14
  l_2_2["\\"] = 15
  l_2_2.x = 16
  local l_2_3 = 128
  for l_2_7 = 0, mp.HEADERPAGE_SZ, l_2_3 do
    local l_2_8 = 0
    local l_2_9 = mp.HEADERPAGE_SZ - l_2_7
    do
      if l_2_9 <= 0 then
        local l_2_10 = {}
        -- DECOMPILER ERROR at PC34: No list found for R10 , SetList fails

        return l_2_10
      else
      end
      -- DECOMPILER ERROR at PC41: Overwrote pending register: R8 in 'AssignReg'

      -- DECOMPILER ERROR at PC43: Overwrote pending register: R11 in 'AssignReg'

      -- DECOMPILER ERROR at PC45: Overwrote pending register: R12 in 'AssignReg'

      if l_2_9 < l_2_3 then
        local l_2_11 = tostring((l_2_0.readheader)(l_2_1, l_2_8))
        for l_2_15 in (string.gmatch)(l_2_11, "[%!%+%0%,%;%(%)%[%]%:%.%=%\'\"\\x]") do
          l_2_0 = l_2_0 + 1
          local l_2_16 = nil
          if l_2_2[l_2_15] == nil then
            l_2_16 = 0
          else
            l_2_16 = l_2_2[l_2_15]
          end
          local l_2_17 = l_2_1[l_2_16]
          if l_2_17 == 0 or l_2_17 == nil then
            l_2_1[l_2_16] = 1
          else
            l_2_1[l_2_16] = l_2_17 + 1
          end
        end
        -- DECOMPILER ERROR at PC74: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC74: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC74: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  do
    local l_2_18 = nil
    do return {l_2_0, l_2_1} end
    -- DECOMPILER ERROR at PC80: Confused about usage of register R6 for local variables in 'ReleaseLocals'

  end
end

BuildRepeatedTokenHistogram = function()
  -- function num : 0_2
  local l_3_0 = 0
  local l_3_1 = {}
  local l_3_2 = 128
  for l_3_6 = 0, mp.HEADERPAGE_SZ, l_3_2 do
    local l_3_7 = 0
    local l_3_8 = mp.HEADERPAGE_SZ - l_3_6
    do
      if l_3_8 <= 0 then
        local l_3_9 = {}
        -- DECOMPILER ERROR at PC17: No list found for R9 , SetList fails

        return l_3_9
      else
      end
      -- DECOMPILER ERROR at PC24: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC26: Overwrote pending register: R10 in 'AssignReg'

      -- DECOMPILER ERROR at PC28: Overwrote pending register: R11 in 'AssignReg'

      if l_3_8 < l_3_2 then
        local l_3_10 = tostring((l_3_0.readheader)(l_3_1, l_3_7))
        for l_3_14 in (string.gmatch)(l_3_10, "[%!%+%0%,%;%(%)%[%]%:%.%=%\'\"\\x]+") do
          l_3_0 = l_3_0 + 1
          local l_3_15 = l_3_1[(string.len)(l_3_14)]
          if l_3_15 == 0 or l_3_15 == nil then
            l_3_1[(string.len)(l_3_14)] = 1
          else
            local l_3_16 = (string.len)(l_3_14)
            l_3_1[l_3_16] = l_3_15 + 1
          end
        end
        -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  do
    local l_3_17 = nil
    do return {l_3_0, l_3_1} end
    -- DECOMPILER ERROR at PC68: Confused about usage of register R5 for local variables in 'ReleaseLocals'

  end
end

BuildHexadecimalHistogram = function()
  -- function num : 0_3
  local l_4_0 = 0
  local l_4_1 = {}
  local l_4_2 = 128
  for l_4_6 = 0, mp.HEADERPAGE_SZ, l_4_2 do
    local l_4_7 = 0
    local l_4_8 = mp.HEADERPAGE_SZ - l_4_6
    do
      if l_4_8 <= 0 then
        local l_4_9 = {}
        -- DECOMPILER ERROR at PC17: No list found for R9 , SetList fails

        return l_4_9
      else
      end
      -- DECOMPILER ERROR at PC24: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC26: Overwrote pending register: R10 in 'AssignReg'

      -- DECOMPILER ERROR at PC28: Overwrote pending register: R11 in 'AssignReg'

      if l_4_8 < l_4_2 then
        local l_4_10 = tostring((l_4_0.readheader)(l_4_1, l_4_7))
        for l_4_14 in (string.gmatch)(l_4_10, "[0-9a-fA-F]+") do
          local l_4_15 = (string.len)(l_4_14)
          if l_4_15 > 3 then
            l_4_0 = l_4_0 + 1
            local l_4_16 = l_4_1[l_4_15]
            if l_4_16 == 0 or l_4_16 == nil then
              l_4_1[l_4_15] = 1
            else
              l_4_1[l_4_15] = l_4_16 + 1
            end
          end
        end
        -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  do
    local l_4_17 = nil
    do return {l_4_0, l_4_1} end
    -- DECOMPILER ERROR at PC62: Confused about usage of register R5 for local variables in 'ReleaseLocals'

  end
end

BuildAlphaNumericHistogram = function()
  -- function num : 0_4
  local l_5_0 = 0
  local l_5_1 = {}
  local l_5_2 = 128
  for l_5_6 = 0, mp.HEADERPAGE_SZ, l_5_2 do
    local l_5_7 = 0
    local l_5_8 = mp.HEADERPAGE_SZ - l_5_6
    do
      if l_5_8 <= 0 then
        local l_5_9 = {}
        -- DECOMPILER ERROR at PC17: No list found for R9 , SetList fails

        return l_5_9
      else
      end
      -- DECOMPILER ERROR at PC24: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC26: Overwrote pending register: R10 in 'AssignReg'

      -- DECOMPILER ERROR at PC28: Overwrote pending register: R11 in 'AssignReg'

      if l_5_8 < l_5_2 then
        local l_5_10 = tostring((l_5_0.readheader)(l_5_1, l_5_7))
        for l_5_14 in (string.gmatch)(l_5_10, "[%d%w]+") do
          local l_5_15 = (string.len)(l_5_14)
          if l_5_15 > 3 then
            l_5_0 = l_5_0 + 1
            local l_5_16 = l_5_1[l_5_15]
            if l_5_16 == 0 or l_5_16 == nil then
              l_5_1[l_5_15] = 1
            else
              l_5_1[l_5_15] = l_5_16 + 1
            end
          end
        end
        -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  do
    local l_5_17 = nil
    do return {l_5_0, l_5_1} end
    -- DECOMPILER ERROR at PC62: Confused about usage of register R5 for local variables in 'ReleaseLocals'

  end
end


