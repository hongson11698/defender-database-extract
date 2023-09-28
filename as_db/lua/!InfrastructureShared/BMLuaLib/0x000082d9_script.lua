-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\BMLuaLib\0x000082d9_luac 

-- params : ...
-- function num : 0
getService = function(l_1_0)
  -- function num : 0_0
  if not l_1_0 or l_1_0 == "" then
    return false
  end
  local l_1_1 = (sysio.EnumerateServices)()
  if not l_1_1 then
    return false
  end
  l_1_0 = l_1_0:lower()
  for l_1_5,l_1_6 in pairs(l_1_1) do
    local l_1_7 = l_1_6.ServiceName
    if l_1_7 and l_1_0 == l_1_7:lower() then
      return l_1_6
    end
  end
end

do
  local l_0_0 = function(l_2_0)
  -- function num : 0_1
  if not l_2_0 then
    return nil
  end
  local l_2_1 = {}
  local l_2_2 = nil
  local l_2_3 = 8
  local l_2_4 = 1
  local l_2_5 = {}
  -- DECOMPILER ERROR at PC17: No list found for R5 , SetList fails

  -- DECOMPILER ERROR at PC18: Overwrote pending register: R6 in 'AssignReg'

  local l_2_6 = 0
  -- DECOMPILER ERROR at PC19: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC21: Overwrote pending register: R8 in 'AssignReg'

  local l_2_7 = ((0).len)(0)
  if l_2_7 < 2 or l_2_7 > 39 then
    return nil
  end
  -- DECOMPILER ERROR at PC30: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC31: Overwrote pending register: R10 in 'AssignReg'

  for l_2_11 = l_2_7, 0, 0 do
    -- DECOMPILER ERROR at PC33: Overwrote pending register: R12 in 'AssignReg'

    -- DECOMPILER ERROR at PC35: Overwrote pending register: R13 in 'AssignReg'

    local l_2_12 = ((0).sub)(0, l_2_11, l_2_11)
    if l_2_12 == ":" then
      if l_2_3 < 1 then
        return nil
      end
    else
      if l_2_2 ~= ":" or l_2_4 >= 65536 then
        return nil
      end
      if l_2_11 == l_2_7 - 1 and l_2_2 == ":" then
        return nil
      end
      if not l_2_12 then
        return nil
      end
      -- DECOMPILER ERROR at PC75: Overwrote pending register: R4 in 'AssignReg'

    end
  end
  if l_2_3 ~= 1 then
    for l_2_16 = l_2_3, l_2_6 do
      -- DECOMPILER ERROR at PC84: Overwrote pending register: R12 in 'AssignReg'

      local l_2_17 = l_2_12 + 1
    end
  end
  do
    if l_2_3 > 6 then
      return nil
    end
    local l_2_18 = 0
    local l_2_19 = 1
    local l_2_20 = 0
    local l_2_21 = nil
    for l_2_25 = 1, 8 do
      local l_2_26 = l_2_5[l_2_25]
      if l_2_26 == 0 then
        l_2_18 = l_2_18 + 1
        if l_2_18 == 1 then
          l_2_19 = l_2_25
        end
        if l_2_20 < l_2_18 then
          l_2_20 = l_2_18
          l_2_21 = l_2_19
        end
      else
        l_2_18 = 0
      end
      local l_2_39 = string.format
      l_2_39 = l_2_39("%x", l_2_26)
      l_2_5[l_2_25] = l_2_39
    end
    local l_2_27 = 0
    for l_2_31 = 1, 8 do
      local l_2_36 = nil
      if l_2_31 >= l_2_21 then
        l_2_36 = l_2_21 + (l_2_20)
      end
      if l_2_36 <= l_2_31 then
        l_2_36 = #l_2_1
        l_2_36 = l_2_36 + 1
        local l_2_32 = nil
        l_2_32 = l_2_5[l_2_31]
        local l_2_38 = nil
        l_2_1[l_2_36] = l_2_32
        l_2_27 = 0
      end
      do
        if l_2_27 < 2 and l_2_31 < 8 then
          l_2_36 = #l_2_1
          l_2_36 = l_2_36 + 1
          local l_2_37 = nil
          l_2_1[l_2_36] = ":"
          l_2_27 = l_2_27 + 1
        end
        do
          -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    local l_2_33 = table.concat
    local l_2_34 = l_2_1
    do
      local l_2_35 = ""
      do return l_2_33(l_2_34, l_2_35) end
      -- DECOMPILER ERROR at PC152: Confused about usage of register R14 for local variables in 'ReleaseLocals'

    end
  end
end

  -- WARNING: undefined locals caused missing assignments!
end

