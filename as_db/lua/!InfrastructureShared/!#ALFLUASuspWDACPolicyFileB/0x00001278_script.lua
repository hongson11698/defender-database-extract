-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLUASuspWDACPolicyFileB\0x00001278_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1048576 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2 = (MpCommon.DecodeAsn1)(l_0_1)
if not l_0_2 then
  return mp.CLEAN
end
local l_0_3 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 = 1, #l_1_0, 2 do
    local l_1_9, l_1_10 = nil
    l_1_9 = #l_1_1
    l_1_9 = l_1_9 + 1
    local l_1_6, l_1_11 = nil
    l_1_10 = string
    l_1_10 = l_1_10.char
    l_1_6 = tonumber
    l_1_11 = l_1_11(l_1_0, l_1_5, l_1_5 + 1)
    do
      local l_1_13, l_1_14, l_1_15, l_1_16, l_1_17 = nil
      l_1_10 = l_1_10(l_1_6(l_1_11, 16))
      local l_1_12 = nil
      l_1_1[l_1_9] = l_1_10
      -- DECOMPILER ERROR at PC18: Confused about usage of register R9 for local variables in 'ReleaseLocals'

      -- DECOMPILER ERROR at PC18: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
  -- DECOMPILER ERROR at PC19: Confused about usage of register R8 for local variables in 'ReleaseLocals'

  local l_1_7 = nil
  local l_1_8 = nil
  return (table.concat)(l_1_1)
end

do
  for l_0_11,l_0_12 in ipairs(l_0_2.Children) do
    local l_0_8, l_0_9, l_0_10, l_0_11 = function(l_2_0, l_2_1, l_2_2, l_2_3)
  -- function num : 0_1 , upvalues : l_0_3
  local l_2_4 = ""
  if l_2_2 + 8 < l_2_3 then
    local l_2_5 = l_2_2 + 1
    local l_2_6 = l_0_3((string.sub)(l_2_0, l_2_5, l_2_5 + 8))
    local l_2_7 = (mp.readu_u32)(l_2_6, 1)
    l_2_2 = l_2_2 + 8
    if l_2_7 <= 0 then
      return "", l_2_2
    end
    -- DECOMPILER ERROR at PC49: Overwrote pending register: R4 in 'AssignReg'

    if l_2_2 + l_2_7 * 2 < l_2_3 then
      if l_2_1 and l_2_4 == nil then
        do
          l_2_2 = l_2_2 + (l_2_7 + (mp.bitand)(4 - l_2_7 % 4, 3)) * 2
          -- DECOMPILER ERROR at PC53: Overwrote pending register: R5 in 'AssignReg'

          return l_2_5, l_2_2
        end
      end
    end
  end
end
, function(l_3_0, l_3_1, l_3_2)
  -- function num : 0_2 , upvalues : l_0_3
  local l_3_3 = ""
  if l_3_1 + 8 < l_3_2 then
    local l_3_4 = l_3_1 + 1
    local l_3_5 = l_0_3((string.sub)(l_3_0, l_3_4, l_3_4 + 8))
    local l_3_6 = (mp.readu_u32)(l_3_5, 1)
    l_3_1 = l_3_1 + 8
    if l_3_6 <= 0 then
      l_3_1 = l_3_1 + 8
      return "", l_3_1
    end
    -- DECOMPILER ERROR at PC56: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC59: Overwrote pending register: R1 in 'AssignReg'

  end
  do
    -- DECOMPILER ERROR at PC60: Overwrote pending register: R4 in 'AssignReg'

    if l_3_1 + l_3_6 * 2 < l_3_2 and l_3_3 ~= nil then
      return l_3_4, l_3_1
    end
  end
end
, function(l_4_0)
  -- function num : 0_3 , upvalues : l_0_3, l_0_4, l_0_5
  local l_4_1 = (string.len)(l_4_0)
  local l_4_2 = l_0_3((string.sub)(l_4_0, 1, 9))
  local l_4_3 = (mp.readu_u32)(l_4_2, 1)
  local l_4_4 = 81
  local l_4_5 = l_0_3((string.sub)(l_4_0, l_4_4, l_4_4 + 8))
  local l_4_6 = (mp.readu_u32)(l_4_5, 1)
  l_4_4 = 89
  l_4_5 = l_0_3((string.sub)(l_4_0, l_4_4, l_4_4 + 8))
  local l_4_7 = (mp.readu_u32)(l_4_5, 1)
  if l_4_7 == 0 then
    return false
  end
  if l_4_7 > 300 then
    return false
  end
  local l_4_8 = 136
  if l_4_6 > 0 then
    for l_4_12 = 1, l_4_6 do
      -- DECOMPILER ERROR at PC70: Overwrote pending register: R12 in 'AssignReg'

    end
  end
  do
    local l_4_13 = {}
    l_4_13["mssense.exe"] = true
    l_4_13["msmpenge.exe"] = true
    l_4_13["wdfilter.sys"] = true
    l_4_13["wdnisdrv.sys"] = true
    local l_4_14 = {}
    -- DECOMPILER ERROR at PC79: Overwrote pending register: R12 in 'AssignReg'

    for l_4_18 = 1, l_4_12 do
      if l_4_8 + 8 <= l_4_1 then
        l_4_4 = l_4_8 + 1
        l_4_5 = l_0_3((string.sub)(l_4_0, l_4_4, l_4_4 + 8))
        local l_4_19 = (mp.readu_u32)(l_4_5, 1)
        -- DECOMPILER ERROR at PC100: Overwrote pending register: R8 in 'AssignReg'

        local l_4_20 = ""
        -- DECOMPILER ERROR at PC108: Overwrote pending register: R8 in 'AssignReg'

        _ = pcall(l_0_5, l_4_0, l_4_8, l_4_1)
        if l_4_19 == 0 and l_4_13[(string.lower)(l_4_20)] then
          (mp.set_mpattribute)((string.format)("MpInternal_researchdata=MDEFileDenied=%s", (MpCommon.Base64Encode)(l_4_20)))
          return true
        end
        -- DECOMPILER ERROR at PC133: Overwrote pending register: R8 in 'AssignReg'

        local l_4_21 = ""
        -- DECOMPILER ERROR at PC142: Overwrote pending register: R8 in 'AssignReg'

        _ = pcall(l_0_4, l_4_0, true, l_4_8, l_4_1)
        if #l_4_21 > 0 then
          local l_4_22 = ""
          for l_4_26 = 1, #l_4_21 do
            local l_4_27 = (string.byte)(l_4_21, l_4_26)
            l_4_22 = l_4_22 .. (string.format)("%02X ", l_4_27)
          end
        end
        do
          do
            if l_4_19 == 0 and l_4_20 == "" and l_4_21 == "" then
              l_4_14[l_4_18] = true
            end
            -- DECOMPILER ERROR at PC173: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC173: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC173: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    if l_4_3 ~= 7 or not next(l_4_14) then
      return false
    end
    local l_4_28 = 0
    -- DECOMPILER ERROR at PC184: Overwrote pending register: R8 in 'AssignReg'

    if l_4_1 - 136 < 8000 then
      l_4_28 = l_4_1 - 136
    else
      l_4_28 = 8000
      -- DECOMPILER ERROR at PC191: Overwrote pending register: R8 in 'AssignReg'

    end
    l_4_4 = l_4_8 + 1
    -- DECOMPILER ERROR at PC198: Overwrote pending register: R16 in 'AssignReg'

    local l_4_29 = l_0_3((string.sub)(l_4_0, l_4_4, l_4_20))
    if l_4_29 == nil then
      return mp.CLEAN
    end
    local l_4_30 = "\006%z%z%z" .. ("."):rep(36) .. "\a%z%z%z"
    local l_4_31 = l_4_29:find(l_4_30)
    if l_4_31 == nil then
      return false
    end
    local l_4_32 = {}
    l_4_32["c:\\programdata\\microsoft\\windows defender"] = true
    l_4_32["c:\\programdata\\microsoft\\windows defender advanced threat protection"] = true
    l_4_32["c:\\program files\\windows defender advanced threat protection"] = true
    l_4_32["c:\\program files (x86)\\windows defender advanced threat protection"] = true
    l_4_32["c:\\program files\\windows defender"] = true
    l_4_32["c:\\program files (x86)\\windows defender"] = true
    l_4_32["c:\\windows\\*"] = true
    l_4_32["c:\\program files\\*"] = true
    l_4_32["c:\\program files (x86)\\*"] = true
    local l_4_33 = 1
    -- DECOMPILER ERROR at PC231: Overwrote pending register: R17 in 'AssignReg'

    local l_4_34 = l_4_21
    while 1 do
      if l_4_34 + 4 <= l_4_1 and l_4_33 <= l_4_7 then
        local l_4_35 = (mp.readu_u32)(l_4_29, l_4_34)
        l_4_34 = l_4_34 + 4
        local l_4_36 = ""
        local l_4_37 = (mp.bitand)(4 - l_4_35 % 4, 3)
        local l_4_38 = l_4_34
        if l_4_38 + l_4_35 <= l_4_1 then
          for l_4_42 = l_4_34, l_4_38 + l_4_35, 2 do
            local l_4_43 = (mp.readu_u16)(l_4_29, l_4_42)
            if l_4_43 ~= 0 then
              l_4_36 = l_4_36 .. (string.char)(l_4_43)
              l_4_34 = l_4_34 + 2
            end
          end
          l_4_34 = l_4_34 + l_4_37 + 4
          if l_4_32[(string.lower)(l_4_36)] and l_4_14[l_4_33] then
            local l_4_44 = (MpCommon.NormalizeString)(l_4_36, "CmdLineNormalizationStandard")
            ;
            (mp.set_mpattribute)((string.format)("MpInternal_researchdata=MDEPathDenied=%s", (MpCommon.Base64Encode)(l_4_44)))
            return true
          end
        end
        do
          do
            l_4_33 = l_4_33 + 1
            -- DECOMPILER ERROR at PC304: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC304: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC304: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    return false
  end
end
, function(l_5_0)
  -- function num : 0_4 , upvalues : l_0_6, l_0_7
  local l_5_5, l_5_6, l_5_7 = nil
  if l_5_0.Type == "OCTET STRING" then
    local l_5_4 = string.sub
    l_5_4 = l_5_4(l_5_0.Value, 1, 8)
    local l_5_1 = nil
    if l_5_4 == "07000000" or l_5_4 == "06000000" or l_5_4 == "05000000" or l_5_4 == "04000000" or l_5_4 == "03000000" or l_5_4 == "02000000" or l_5_4 == "01000000" then
      do
        l_5_1 = l_0_6
        local l_5_2 = nil
        l_5_2 = l_5_0.Value
        local l_5_3 = nil
        do return l_5_1(l_5_2) end
        -- DECOMPILER ERROR at PC27: Confused about usage of register R3 for local variables in 'ReleaseLocals'

        l_5_4 = l_5_0.Children
        if l_5_4 then
          l_5_4 = ipairs
          l_5_4 = l_5_4(l_5_0.Children)
          for l_5_11,l_5_12 in l_5_4 do
            local l_5_11, l_5_12 = nil
            l_5_11 = l_0_7
            l_5_12 = l_5_10
            l_5_11 = l_5_11(l_5_12)
            if l_5_11 then
              l_5_11 = true
              return l_5_11
            end
          end
        end
        do
          do return false end
          -- DECOMPILER ERROR at PC45: Confused about usage of register R2 for local variables in 'ReleaseLocals'

        end
      end
    end
  end
end

    -- DECOMPILER ERROR at PC55: Confused about usage of register: R12 in 'UnsetPending'

    if l_0_11(R12_PC55) then
      return mp.INFECTED
    end
  end
  do return mp.CLEAN end
  -- DECOMPILER ERROR at PC67: freeLocal<0 in 'ReleaseLocals'

end

