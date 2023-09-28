-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000082d3_luac 

-- params : ...
-- function num : 0
getTamperProtectionState = function()
  -- function num : 0_0
  local l_1_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features")
  do
    if l_1_0 then
      local l_1_1 = (sysio.GetRegValueAsDword)(l_1_0, "TamperProtection")
      if l_1_1 then
        return l_1_1
      end
    end
    return nil
  end
end

isTamperProtectionOn = function()
  -- function num : 0_1
  local l_2_0 = getTamperProtectionState()
  if l_2_0 then
    if (mp.bitand)(l_2_0, 1) == 1 then
      return true, l_2_0
    else
      return false, l_2_0
    end
  end
  return nil
end

checkIfCertificateHit = function()
  -- function num : 0_2
  local l_3_0 = (mp.get_mpattributevalue)("RPF:MpCertVA")
  if l_3_0 == nil then
    return false
  end
  local l_3_1 = (mp.get_mpattributevalue)("RPF:MpCertSz")
  local l_3_2 = (mp.hstr_full_log)()
  for l_3_6,l_3_7 in pairs(l_3_2) do
    if l_3_7.matched and l_3_7.VA and l_3_0 < l_3_7.VA and l_3_7.VA < l_3_0 + l_3_1 then
      return true
    end
  end
  return false
end

isSafeToRead = function(l_4_0, l_4_1, l_4_2)
  -- function num : 0_3
  if not l_4_1 or not l_4_2 then
    return false
  end
  if l_4_1 <= 0 or l_4_2 <= 0 then
    return false
  end
  local l_4_3, l_4_4 = (mp.SMSVirtualQuery)(l_4_1)
  if not l_4_3 then
    return false
  end
  local l_4_5 = l_4_0[l_4_4.found_ix]
  if not l_4_5 then
    return false
  end
  do
    local l_4_6 = (mp.bitand)(l_4_5.prot, 255)
    if l_4_6 ~= 32 and l_4_6 ~= 64 and l_4_6 ~= 128 and l_4_6 ~= 8 and l_4_6 ~= 4 and l_4_6 ~= 2 then
      return false
    end
    do return l_4_5.addr < l_4_1 + l_4_2 and l_4_1 + l_4_2 <= l_4_5.addr + l_4_5.size end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end

maceExtract_ZLoader = function()
  -- function num : 0_4
  if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
    return mp.INFECTED
  end
  local l_5_0 = function(l_6_0)
    -- function num : 0_4_0
    l_6_0 = (mp.bitand)(l_6_0, 4294967295)
    local l_6_1, l_6_2, l_6_3, l_6_4 = (mp.bsplit)(l_6_0, 8)
    return (string.char)(l_6_1) .. (string.char)(l_6_2) .. (string.char)(l_6_3) .. (string.char)(l_6_4)
  end

  local l_5_1 = function(l_7_0, l_7_1)
    -- function num : 0_4_1
    local l_7_2 = ""
    for l_7_6 = l_7_1, #l_7_0 do
      if (string.byte)(l_7_0, l_7_6) >= 32 then
        do
          if (string.byte)(l_7_0, l_7_6) > 126 then
            break
          end
          l_7_2 = l_7_2 .. (string.char)((string.byte)(l_7_0, l_7_6))
          -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    return l_7_2
  end

  local l_5_2 = (mp.hstr_full_log)()
  local l_5_3 = ""
  for l_5_7,l_5_8 in ipairs(l_5_2) do
    if l_5_8.matched then
      local l_5_9 = (mp.ReadProcMem)(l_5_8.VA, 80)
      if not l_5_9 then
        return mp.INFECTED
      end
      if (mp.readu_u16)(l_5_9, 1) == 50307 then
        local l_5_10 = "\\x83\\xC4\\x04\\x84\\xC0\\x74.\\xE8....\\xE8....\\xE8....\\xE8....[\\x00-\\x67\\x69-\\xFF]+\\x68(....)\\x68(....)"
        local l_5_11, l_5_12, l_5_13 = (MpCommon.BinaryRegExpSearch)(l_5_10, l_5_9)
        if l_5_11 then
          l_5_12 = (mp.readu_u32)(l_5_12, 1)
          l_5_13 = (mp.readu_u32)(l_5_13, 1)
          local l_5_14, l_5_15 = (mp.bsplit)(l_5_12, 16)
          local l_5_16, l_5_17 = (mp.bsplit)(l_5_13, 16)
          if l_5_15 ~= l_5_17 then
            return mp.INFECTED
          end
          local l_5_18 = (mp.ReadProcMem)(l_5_12, 48)
          if not l_5_18 then
            return mp.INFECTED
          end
          local l_5_19 = l_5_1(l_5_18, 1)
          if #l_5_19 == 0 or #l_5_19 == 48 then
            return mp.INFECTED
          end
          local l_5_20 = (mp.ReadProcMem)(l_5_13, 880)
          if not l_5_20 then
            return mp.INFECTED
          end
          l_5_3 = "ZLOA" .. l_5_0(#l_5_19) .. l_5_19 .. l_5_0(#l_5_20) .. l_5_20
          l_5_3 = (MpCommon.Base64Encode)(l_5_3)
        end
        break
      end
    end
  end
  do
    do
      if l_5_3 ~= "" then
        local l_5_21 = "mace_zloader"
        AppendToRollingQueue(l_5_21, l_5_3, 0, 60, 32, 1)
      end
      return mp.INFECTED
    end
  end
end

maceExtract_CobaltStrike = function(l_6_0)
  -- function num : 0_5
  if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
    return 
  end
  local l_6_4 = (mp.GetSMSProcArchitecture)() == mp.SMS_PROC_ARCH_X64
  local l_6_5 = (mp.GetScannedPPID)()
  local l_6_8 = (mp.GetSMSMemRanges)()
  local l_6_9 = function(l_7_0, l_7_1)
    -- function num : 0_5_0 , upvalues : l_6_6
    if not l_7_0 or not l_7_1 then
      return false
    end
    if l_7_0 <= 0 or l_7_1 <= 0 then
      return false
    end
    local l_7_2, l_7_3 = (mp.SMSVirtualQuery)(l_7_0)
    if not l_7_2 then
      return false
    end
    local l_7_4 = l_6_6[l_7_3.found_ix]
    if not l_7_4 then
      return false
    end
    do
      local l_7_5 = (mp.bitand)(l_7_4.prot, 255)
      if l_7_5 ~= 32 and l_7_5 ~= 64 and l_7_5 ~= 128 and l_7_5 ~= 8 and l_7_5 ~= 4 then
        return false
      end
      do return l_7_4.addr < l_7_0 + l_7_1 and l_7_0 + l_7_1 <= l_7_4.addr + l_7_4.size end
      -- DECOMPILER ERROR: 1 unprocessed JMP targets
    end
  end

  local l_6_10 = function(l_8_0, l_8_1)
    -- function num : 0_5_1 , upvalues : l_6_7
    if not l_6_7(l_8_0, l_8_1) then
      return nil
    end
    local l_8_2 = mp.ReadProcMem
    local l_8_3 = l_8_0
    do
      local l_8_4 = l_8_1
      do return l_8_2(l_8_3, l_8_4) end
      -- DECOMPILER ERROR at PC14: Confused about usage of register R3 for local variables in 'ReleaseLocals'

    end
  end

  local l_6_13 = function(l_9_0)
    -- function num : 0_5_2
    local l_9_1 = ""
    local l_9_2 = 6
    local l_9_3 = 0
    if not l_9_0 or #l_9_0 == 0 then
      return -1
    end
    if (string.byte)(l_9_0, 1) == 0 then
      l_9_1 = "([\\x00-\\xFF]+)\\x00\\x25\\x00\\x02\\x00\\x04"
    else
      if (string.byte)(l_9_0, 1) == 46 then
        l_9_1 = "([\\x00-\\xFF]+)\\x2e\\x0b\\x2e\\x2c\\x2e\\x2a"
        l_9_3 = 46
      else
        if (string.byte)(l_9_0, 1) == 105 then
          l_9_1 = "([\\x00-\\xFF]+)\\x69\\x4c\\x69\\x6b\\x69\\x6d"
          l_9_3 = 105
        else
          if (string.byte)(l_9_0, 1) == 78 then
            l_9_1 = "([\\x00-\\xFF]+)\\x4e\\x6b\\x4e\\x4c\\x4e\\x4a"
            l_9_3 = 78
          else
            return -1
          end
        end
      end
    end
    if l_9_1 == "" then
      return -1
    end
    local l_9_4, l_9_5 = (MpCommon.BinaryRegExpSearch)(l_9_1, l_9_0)
    if not l_9_4 then
      return -1
    end
    local l_9_6 = #l_9_5 + l_9_2 + 1
    if #l_9_0 < l_9_6 + 4 then
      return -1
    end
    do
      local l_9_11, l_9_12, l_9_13, l_9_14 = (string.char)((mp.bitxor)((string.byte)(l_9_0, l_9_6 + 3), l_9_3)), (string.char)((mp.bitxor)((string.byte)(l_9_0, l_9_6 + 2), l_9_3)), (string.char)((mp.bitxor)((string.byte)(l_9_0, l_9_6 + 1), l_9_3)), string.char
      l_9_14 = l_9_14((mp.bitxor)((string.byte)(l_9_0, l_9_6 + 0), l_9_3))
      l_9_11 = l_9_11 .. l_9_12 .. l_9_13 .. l_9_14
      local l_9_7 = nil
      l_9_12 = mp
      l_9_12 = l_9_12.readu_u32
      local l_9_8 = nil
      l_9_13 = l_9_11
      local l_9_9 = nil
      l_9_14 = 1
      local l_9_10 = nil
      do return l_9_12(l_9_13, l_9_14) end
      -- DECOMPILER ERROR at PC128: Confused about usage of register R9 for local variables in 'ReleaseLocals'

    end
  end

  local l_6_14 = function(l_10_0)
    -- function num : 0_5_3
    local l_10_1 = ""
    local l_10_2 = 6
    local l_10_3 = 0
    if not l_10_0 or #l_10_0 == 0 then
      return nil
    end
    if (string.byte)(l_10_0, 1) == 0 then
      l_10_1 = "([\\x00-\\xFF]+)\\x00\\x08\\x00\\x03\\x01\\x00"
    else
      if (string.byte)(l_10_0, 1) == 46 then
        l_10_1 = "([\\x00-\\xFF]+)\\x2e\\x26\\x2e\\x2d\\x2f\\x2e"
        l_10_3 = 46
      else
        if (string.byte)(l_10_0, 1) == 105 then
          l_10_1 = "([\\x00-\\xFF]+)\\x69\\x61\\x69\\x6a\\x68\\x69"
          l_10_3 = 105
        else
          if (string.byte)(l_10_0, 1) == 78 then
            l_10_1 = "([\\x00-\\xFF]+)\\x4e\\x46\\x4e\\x4d\\x4f\\x4e"
            l_10_3 = 78
          else
            return nil
          end
        end
      end
    end
    if l_10_1 == "" then
      return nil
    end
    local l_10_4, l_10_5 = (MpCommon.BinaryRegExpSearch)(l_10_1, l_10_0)
    if not l_10_4 then
      return nil
    end
    local l_10_6 = #l_10_5 + l_10_2 + 1
    if #l_10_0 < l_10_6 + 4 then
      return nil
    end
    local l_10_7 = ""
    for l_10_11 = l_10_6, #l_10_0 do
      local l_10_12 = (mp.bitxor)((string.byte)(l_10_0, l_10_11), l_10_3)
      if l_10_12 == 0 then
        break
      end
      l_10_7 = l_10_7 .. (string.char)(l_10_12)
    end
    do
      return l_10_7
    end
  end

  local l_6_15 = function(l_11_0, l_11_1)
    -- function num : 0_5_4
    -- DECOMPILER ERROR at PC5: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC11: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC17: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC23: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC29: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC35: Overwrote pending register: R7 in 'AssignReg'

    -- DECOMPILER ERROR at PC41: Overwrote pending register: R8 in 'AssignReg'

    -- DECOMPILER ERROR at PC47: Overwrote pending register: R9 in 'AssignReg'

    return nil + nil * 256 + nil * 65536 + nil * 16777216 + nil * 4294967296 + nil * 1099511627776 + nil * 2.8147497671066e+14 + nil * 7.2057594037928e+16
  end

  do
    if not l_6_0 then
      local l_6_16 = function(l_12_0, l_12_1, l_12_2)
    -- function num : 0_5_5 , upvalues : l_6_8, l_6_11
    local l_12_3 = ""
    local l_12_4 = l_6_8(l_12_0, l_12_1 * 128)
    if not l_12_4 then
      return ""
    end
    local l_12_5 = 1
    local l_12_6 = 2
    local l_12_7 = 3
    local l_12_8 = {}
    local l_12_9 = {}
    l_12_9.pos = 1
    l_12_9.fieldType = l_12_5
    l_12_9.size = 2
    local l_12_10 = {}
    l_12_10.pos = 2
    l_12_10.fieldType = l_12_5
    l_12_10.size = 2
    local l_12_11 = {}
    l_12_11.pos = 3
    l_12_11.fieldType = l_12_6
    l_12_11.size = 4
    local l_12_12 = {}
    l_12_12.pos = 4
    l_12_12.fieldType = l_12_6
    l_12_12.size = 4
    local l_12_13 = {}
    l_12_13.pos = 5
    l_12_13.fieldType = l_12_5
    l_12_13.size = 2
    local l_12_14 = {}
    l_12_14.pos = 6
    l_12_14.fieldType = l_12_5
    l_12_14.size = 2
    local l_12_15 = {}
    l_12_15.pos = 7
    l_12_15.fieldType = l_12_7
    l_12_15.size = 256
    local l_12_16 = {}
    l_12_16.pos = 8
    l_12_16.fieldType = l_12_7
    l_12_16.size = 256
    local l_12_17 = {}
    l_12_17.pos = 9
    l_12_17.fieldType = l_12_7
    l_12_17.size = 128
    local l_12_18 = {}
    l_12_18.pos = 10
    l_12_18.fieldType = l_12_7
    l_12_18.size = 64
    local l_12_19 = {}
    l_12_19.pos = 11
    l_12_19.fieldType = l_12_7
    l_12_19.size = 256
    local l_12_20 = {}
    l_12_20.pos = 12
    l_12_20.fieldType = l_12_7
    l_12_20.size = 256
    local l_12_21 = {}
    l_12_21.pos = 13
    l_12_21.fieldType = l_12_7
    l_12_21.size = 256
    local l_12_22 = {}
    l_12_22.pos = 14
    l_12_22.fieldType = l_12_7
    l_12_22.size = 16
    local l_12_23 = {}
    l_12_23.pos = 15
    l_12_23.fieldType = l_12_7
    l_12_23.size = 128
    local l_12_24 = {}
    l_12_24.pos = 19
    l_12_24.fieldType = l_12_6
    l_12_24.size = 4
    local l_12_25 = {}
    l_12_25.pos = 20
    l_12_25.fieldType = l_12_6
    l_12_25.size = 4
    local l_12_26 = {}
    l_12_26.pos = 21
    l_12_26.fieldType = l_12_7
    l_12_26.size = 256
    local l_12_27 = {}
    l_12_27.pos = 22
    l_12_27.fieldType = l_12_5
    l_12_27.size = 2
    local l_12_28 = {}
    l_12_28.pos = 23
    l_12_28.fieldType = l_12_7
    l_12_28.size = 128
    local l_12_29 = {}
    l_12_29.pos = 24
    l_12_29.fieldType = l_12_7
    l_12_29.size = 128
    local l_12_30 = {}
    l_12_30.pos = 25
    l_12_30.fieldType = l_12_7
    l_12_30.size = 6144
    local l_12_31 = {}
    l_12_31.pos = 26
    l_12_31.fieldType = l_12_7
    l_12_31.size = 16
    local l_12_32 = {}
    l_12_32.pos = 27
    l_12_32.fieldType = l_12_7
    l_12_32.size = 16
    local l_12_33 = {}
    l_12_33.pos = 28
    l_12_33.fieldType = l_12_6
    l_12_33.size = 4
    local l_12_34 = {}
    l_12_34.pos = 29
    l_12_34.fieldType = l_12_7
    l_12_34.size = 64
    local l_12_35 = {}
    l_12_35.pos = 30
    l_12_35.fieldType = l_12_7
    l_12_35.size = 64
    local l_12_36 = {}
    l_12_36.pos = 31
    l_12_36.fieldType = l_12_6
    l_12_36.size = 4
    local l_12_37 = {}
    l_12_37.pos = 32
    l_12_37.fieldType = l_12_7
    l_12_37.size = 128
    local l_12_38 = {}
    l_12_38.pos = 33
    l_12_38.fieldType = l_12_7
    l_12_38.size = 64
    local l_12_39 = {}
    l_12_39.pos = 34
    l_12_39.fieldType = l_12_7
    l_12_39.size = 64
    local l_12_40 = {}
    l_12_40.pos = 35
    l_12_40.fieldType = l_12_5
    l_12_40.size = 2
    local l_12_41 = {}
    l_12_41.pos = 37
    l_12_41.fieldType = l_12_6
    l_12_41.size = 4
    local l_12_42 = {}
    l_12_42.pos = 38
    l_12_42.fieldType = l_12_5
    l_12_42.size = 2
    local l_12_43 = {}
    l_12_43.pos = 39
    l_12_43.fieldType = l_12_5
    l_12_43.size = 2
    local l_12_44 = {}
    l_12_44.pos = 40
    l_12_44.fieldType = l_12_6
    l_12_44.size = 4
    local l_12_45 = {}
    l_12_45.pos = 43
    l_12_45.fieldType = l_12_5
    l_12_45.size = 2
    local l_12_46 = {}
    l_12_46.pos = 44
    l_12_46.fieldType = l_12_5
    l_12_46.size = 2
    local l_12_47 = {}
    l_12_47.pos = 45
    l_12_47.fieldType = l_12_6
    l_12_47.size = 4
    local l_12_48 = {}
    l_12_48.pos = 46
    l_12_48.fieldType = l_12_7
    l_12_48.size = 256
    local l_12_49 = {}
    l_12_49.pos = 47
    l_12_49.fieldType = l_12_7
    l_12_49.size = 256
    local l_12_50 = {}
    l_12_50.pos = 51
    l_12_50.fieldType = l_12_7
    l_12_50.size = 128
    local l_12_51 = {}
    l_12_51.pos = 52
    l_12_51.fieldType = l_12_5
    l_12_51.size = 2
    local l_12_52 = {}
    l_12_52.pos = 50
    l_12_52.fieldType = l_12_5
    l_12_52.size = 2
    do
      local l_12_53 = {}
      l_12_53.pos = 54
      l_12_53.fieldType = l_12_7
      l_12_53.size = 128
      -- DECOMPILER ERROR at PC193: No list found for R8 , SetList fails

      l_12_9 = ipairs
      l_12_10 = l_12_8
      l_12_9 = l_12_9(l_12_10)
      for l_12_12,l_12_13 in l_12_9 do
        l_12_14 = mp
        l_12_14 = l_12_14.bsplit
        l_12_15 = l_12_13.size
        l_12_16 = 8
        l_12_14 = l_12_14(l_12_15, l_12_16)
        l_12_16 = l_12_13.pos
        l_12_16 = l_12_16 * l_12_2
        l_12_16 = l_12_16 + 1
        l_12_17 = l_12_16 + l_12_1
        l_12_18 = "\000"
        l_12_19 = string
        l_12_19 = l_12_19.char
        l_12_20 = l_12_13.pos
        l_12_19 = l_12_19(l_12_20)
        l_12_20 = "\000"
        l_12_21 = string
        l_12_21 = l_12_21.char
        l_12_22 = l_12_13.fieldType
        l_12_21 = l_12_21(l_12_22)
        l_12_22 = string
        l_12_22 = l_12_22.char
        l_12_23 = 
        l_12_22 = l_12_22(l_12_23)
        l_12_23 = string
        l_12_23 = l_12_23.char
        l_12_24 = l_12_14
        l_12_23 = l_12_23(l_12_24)
        l_12_18 = l_12_18 .. l_12_19 .. l_12_20 .. l_12_21 .. l_12_22 .. l_12_23
        l_12_19 = string
        l_12_19 = l_12_19.byte
        l_12_20 = l_12_4
        l_12_21 = l_12_16
        l_12_19 = l_12_19(l_12_20, l_12_21)
        l_12_20 = l_12_13.fieldType
        if l_12_19 == l_12_20 then
          l_12_19 = l_12_13.fieldType
          if l_12_19 ~= l_12_7 then
            l_12_19 = string
            l_12_19 = l_12_19.sub
            l_12_20 = l_12_4
            l_12_21 = l_12_17
            l_12_22 = l_12_13.size
            l_12_22 = l_12_22 - 1
            l_12_22 = l_12_17 + (l_12_22)
            l_12_19 = l_12_19(l_12_20, l_12_21, l_12_22)
            l_12_20 = l_12_3
            l_12_21 = l_12_18
            l_12_3 = l_12_20 .. l_12_21
            l_12_20 = l_12_3
            l_12_21 = string
            l_12_21 = l_12_21.reverse
            l_12_22 = l_12_19
            l_12_21 = l_12_21(l_12_22)
            l_12_3 = l_12_20 .. l_12_21
          else
            l_12_19 = 0
            if l_12_1 == 4 then
              l_12_20 = mp
              l_12_20 = l_12_20.readu_u32
              l_12_21 = l_12_4
              l_12_22 = l_12_17
              l_12_20 = l_12_20(l_12_21, l_12_22)
              l_12_19 = l_12_20
            else
              l_12_20 = l_6_11
              l_12_21 = l_12_4
              l_12_22 = l_12_17
              l_12_20 = l_12_20(l_12_21, l_12_22)
              l_12_19 = l_12_20
            end
            if l_12_19 ~= 0 then
              l_12_20 = l_6_8
              l_12_21 = l_12_19
              l_12_22 = l_12_13.size
              l_12_20 = l_12_20(l_12_21, l_12_22)
              if not l_12_20 then
                l_12_21 = ""
                return l_12_21
              end
              l_12_21 = l_12_3
              l_12_22 = l_12_18
              l_12_3 = l_12_21 .. l_12_22
              l_12_21 = l_12_3
              l_12_22 = l_12_20
              l_12_3 = l_12_21 .. l_12_22
            end
          end
        end
      end
      do return l_12_3 end
      -- DECOMPILER ERROR at PC289: Confused about usage of register R13 for local variables in 'ReleaseLocals'

    end
  end

      for l_6_20,l_6_21 in ipairs((mp.hstr_full_log)()) do
        local l_6_17, l_6_18, l_6_19, l_6_20, l_6_21 = function(l_13_0)
    -- function num : 0_5_6 , upvalues : l_6_4, l_6_8, l_6_5
    rdtrace("patch started")
    local l_13_1 = {}
    -- DECOMPILER ERROR at PC5: No list found for R1 , SetList fails

    local l_13_2 = {}
    -- DECOMPILER ERROR at PC8: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC9: Overwrote pending register: R3 in 'AssignReg'

    for l_13_8,l_13_9 in ipairs(l_13_0) do
      local l_13_5 = 27 and l_13_1 or l_13_2
      for l_13_13,l_13_14 in ipairs(l_13_5) do
        -- DECOMPILER ERROR at PC23: Confused about usage of register: R13 in 'UnsetPending'

        local l_13_16 = nil
        if not l_6_8(l_13_10 + R13_PC23, 4) then
          return 
        end
        if (string.byte)(l_6_8(l_13_10 + R13_PC23, 4), 1) == 117 then
          (mp.WriteProcByte)(l_13_16, 116)
          rdtrace("patch completed")
          AppendToRollingQueue("82e27b72_" .. l_6_5, "true")
        else
          rdtrace("patch failed.")
          local l_13_17 = nil
          -- DECOMPILER ERROR at PC63: Overwrote pending register: R16 in 'AssignReg'

          -- DECOMPILER ERROR at PC71: Overwrote pending register: R16 in 'AssignReg'

          if l_13_15 ~= 189 or l_13_15 == 27 then
            do
              AppendToRollingQueue("82e27b72_" .. l_6_5, (MpCommon.Base64Encode)(nil))
              -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out IF_ELSE_STMT

              -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
  end
, {}, "", {}
        -- DECOMPILER ERROR at PC49: Confused about usage of register: R19 in 'UnsetPending'

        if R19_PC49.matched then
          if l_6_10(R19_PC49.VA, 16) == nil then
            return 
          end
          l_6_21[R19_PC49.VA] = l_6_10(R19_PC49.VA, 16)
          if (mp.readu_u16)(l_6_10(R19_PC49.VA, 16), 1) == 55925 or (mp.readu_u16)(l_6_10(R19_PC49.VA, 16), 1) == 25420 then
            for l_6_26,l_6_27 in ipairs(R19_PC49.VA_all) do
              local l_6_27 = nil
              -- DECOMPILER ERROR at PC82: Confused about usage of register: R25 in 'UnsetPending'

              ;
              (table.insert)(l_6_19, R25_PC82)
            end
          end
        end
      end
      -- DECOMPILER ERROR at PC89: Confused about usage of register: R14 in 'UnsetPending'

      for l_6_31,l_6_32 in pairs(l_6_21) do
        local l_6_28, l_6_29, l_6_30, l_6_31 = nil
        -- DECOMPILER ERROR at PC94: Confused about usage of register: R19 in 'UnsetPending'

        -- DECOMPILER ERROR at PC101: Confused about usage of register: R19 in 'UnsetPending'

        -- DECOMPILER ERROR at PC108: Confused about usage of register: R19 in 'UnsetPending'

        -- DECOMPILER ERROR at PC115: Confused about usage of register: R19 in 'UnsetPending'

        -- DECOMPILER ERROR at PC123: Confused about usage of register: R19 in 'UnsetPending'

        -- DECOMPILER ERROR at PC128: Confused about usage of register: R18 in 'UnsetPending'

        -- DECOMPILER ERROR at PC128: Overwrote pending register: R20 in 'AssignReg'

        -- DECOMPILER ERROR at PC130: Confused about usage of register: R18 in 'UnsetPending'

        -- DECOMPILER ERROR at PC130: Overwrote pending register: R20 in 'AssignReg'

        if (mp.readu_u16)(l_6_26, 1) == 256 or (mp.readu_u16)(l_6_26, 1) == 26729 or (mp.readu_u16)(l_6_26, 1) == 12078 or (mp.readu_u16)(l_6_26, 1) == 20302 then
          if (mp.readu_u16)(l_6_26, 1) == 256 then
            do
              l_6_30 = l_6_10(0, 4096)
              if not l_6_30 then
                l_6_30 = ""
              end
              -- DECOMPILER ERROR at PC142: Confused about usage of register: R19 in 'UnsetPending'

              -- DECOMPILER ERROR at PC149: Confused about usage of register: R19 in 'UnsetPending'

              if (mp.readu_u16)(l_6_26, 1) == 55925 then
                local l_6_34 = nil
                if (mp.readu_u32)(l_6_26, 7) > 2147483647 then
                  break
                end
                if not l_6_10((mp.readu_u32)(l_6_26, 7), 16) then
                  break
                end
                -- DECOMPILER ERROR at PC240: Overwrote pending register: R22 in 'AssignReg'

                -- DECOMPILER ERROR at PC243: Confused about usage of register: R22 in 'UnsetPending'

                if (mp.readu_u32)(l_6_10((mp.readu_u32)(l_6_26, 7), 16), 5) == 0 or 0 then
                  do
                    do
                      if 0 == 0 then
                        break
                      end
                      -- DECOMPILER ERROR at PC247: Confused about usage of register: R22 in 'UnsetPending'

                      l_6_30 = l_6_16(0, 4, 8)
                      -- DECOMPILER ERROR at PC255: Confused about usage of register: R19 in 'UnsetPending'

                      -- DECOMPILER ERROR at PC261: Confused about usage of register: R18 in 'UnsetPending'

                      if (mp.readu_u16)(l_6_26, 1) == 25420 then
                        local l_6_37 = nil
                        if not l_6_10(l_6_36 - 4, 16) then
                          break
                        end
                        -- DECOMPILER ERROR at PC272: Confused about usage of register: R18 in 'UnsetPending'

                        local l_6_38 = nil
                        if (mp.readu_u32)(l_6_10(l_6_36 - 4, 16), 1) + l_6_36 > 1.4073748835533e+14 then
                          break
                        end
                        -- DECOMPILER ERROR at PC277: Confused about usage of register: R21 in 'UnsetPending'

                        local l_6_39 = nil
                        if not l_6_10((mp.readu_u32)(l_6_10(l_6_36 - 4, 16), 1) + l_6_36, 16) then
                          break
                        end
                        local l_6_41, l_6_42 = nil
                        local l_6_43, l_6_44 = nil
                        if l_6_39 ~= l_6_15(l_6_10((mp.readu_u32)(l_6_10(l_6_36 - 4, 16), 1) + l_6_36, 16), 1) then
                          for l_6_48 = 16, 512, 16 do
                            local l_6_45, l_6_46, l_6_47, l_6_48 = (mp.bsplit)(l_6_39, 32), (mp.bsplit)(l_6_15(l_6_10((mp.readu_u32)(l_6_10(l_6_36 - 4, 16), 1) + l_6_36, 16), 1), 32)
                            do
                              do
                                if not l_6_10(l_6_42 + .end, 7) then
                                  break
                                end
                                for l_6_54 = 0, #l_6_43 - 1 do
                                  local l_6_53, l_6_54 = ""
                                  -- DECOMPILER ERROR at PC324: Confused about usage of register: R37 in 'UnsetPending'

                                  l_6_53 = l_6_53 .. (string.char)((mp.bitxor)((string.byte)(l_6_43, R37_PC324 + 1), (string.byte)(l_6_54, R37_PC324 % #l_6_54 + 1)))
                                end
                                -- DECOMPILER ERROR at PC338: Confused about usage of register: R32 in 'UnsetPending'

                                l_6_44 = l_6_15(l_6_53, 1)
                                l_6_47 = (mp.bsplit)(l_6_44, 32)
                                if l_6_46 == l_6_48 then
                                  break
                                end
                                -- DECOMPILER ERROR at PC352: LeaveBlock: unexpected jumping out DO_STMT

                              end
                            end
                          end
                          -- DECOMPILER ERROR at PC353: Confused about usage of register: R25 in 'UnsetPending'

                          if l_6_46 ~= l_6_48 then
                            break
                          end
                        end
                        l_6_30 = l_6_16(l_6_44, 8, 16)
                      end
                      if l_6_30 ~= "" then
                        break
                      end
                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC365: LeaveBlock: unexpected jumping out IF_STMT

                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    -- DECOMPILER ERROR at PC387: Overwrote pending register: R13 in 'AssignReg'

    -- DECOMPILER ERROR at PC393: Confused about usage of register: R12 in 'UnsetPending'

    -- DECOMPILER ERROR at PC398: Confused about usage of register: R10 in 'UnsetPending'

    -- DECOMPILER ERROR at PC399: Confused about usage of register: R12 in 'UnsetPending'

    do
      do
        if ((mp.GetSMSProcArchitecture)() ~= mp.SMS_PROC_ARCH_X64 or (versioning.IsSeville)()) and #l_6_29 > 0 then
          local l_6_55, l_6_56 = nil
          if pcallEx("__patch_byte", l_6_17, l_6_29) then
            rdtrace("call to patch had no errors")
          else
            rdtrace("call to patch had errors")
          end
        end
        -- DECOMPILER ERROR at PC415: Confused about usage of register: R13 in 'UnsetPending'

        if l_6_16(l_6_0, 8, 16) ~= "" then
          local l_6_57, l_6_58 = nil
          if pcallEx("__get_c2server", l_6_14, l_6_16(l_6_0, 8, 16)) then
            for l_6_62 in (string.gmatch)(R17_PC423, "[^,]+") do
              local l_6_59, l_6_60, l_6_61, l_6_62 = nil
              -- DECOMPILER ERROR at PC427: Confused about usage of register: R19 in 'UnsetPending'

              -- DECOMPILER ERROR at PC436: Confused about usage of register: R19 in 'UnsetPending'

              if (string.byte)(l_6_40, 1) ~= 47 then
                AppendToRollingQueue("015b9d6d_" .. l_6_5, l_6_40)
              end
            end
          else
            rdtrace("unable to get c2server")
          end
          -- DECOMPILER ERROR at PC446: Confused about usage of register: R13 in 'UnsetPending'

          local l_6_63 = nil
          AppendToRollingQueue("mace_atosev", (MpCommon.Base64Encode)(l_6_60), 0, 60, 32, 1)
        end
        -- DECOMPILER ERROR at PC458: Confused about usage of register: R13 in 'UnsetPending'

        do return (MpCommon.Base64Encode)(l_6_60) end
        -- DECOMPILER ERROR at PC459: freeLocal<0 in 'ReleaseLocals'

        -- DECOMPILER ERROR: 32 unprocessed JMP targets
      end
    end
  end
end

maceExtract_SystemBC = function()
  -- function num : 0_6
  if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
    return mp.INFECTED
  end
  local l_7_0 = ((mp.hstr_full_log)())
  local l_7_1 = nil
  for l_7_5,l_7_6 in ipairs(l_7_0) do
    if l_7_6.matched then
      l_7_1 = (mp.ReadProcMem)(l_7_6.VA, 255)
      if l_7_1 == nil then
        return mp.INFECTED
      end
      if (string.find)(l_7_1, "BEGINDATA", 1, true) then
        do
          do
            local l_7_7 = (MpCommon.Base64Encode)("SYBC_" .. l_7_1)
            AppendToRollingQueue("mace_systembc", l_7_7, 0, 60, 32, 1)
            do break end
            -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
  return mp.INFECTED
end

reportDetectedRegions = function(l_8_0)
  -- function num : 0_7
  if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
    return false
  end
  local l_8_1 = function(l_9_0)
    -- function num : 0_7_0
    local l_9_1 = (mp.GetScannedPPID)()
    local l_9_2 = (mp.GetSMSMemRanges)()
    local l_9_6 = function(l_10_0)
      -- function num : 0_7_0_0 , upvalues : l_9_2
      if not l_10_0 or l_10_0 < 0 then
        return nil
      end
      local l_10_1, l_10_2 = (mp.SMSVirtualQuery)(l_10_0)
      if not l_10_1 then
        return nil
      end
      local l_10_3 = l_9_2[l_10_2.found_ix]
      if not l_10_3 then
        return nil
      end
      return l_10_3
    end

    local l_9_7 = function(l_11_0, l_11_1)
      -- function num : 0_7_0_1 , upvalues : l_9_3
      if not l_11_0 or not l_11_1 then
        return false
      end
      if l_11_0 <= 0 or l_11_1 <= 0 then
        return false
      end
      local l_11_2 = l_9_3(l_11_0)
      if not l_11_2 then
        return false
      end
      do
        local l_11_3 = (mp.bitand)(l_11_2.prot, 255)
        if l_11_3 ~= 32 and l_11_3 ~= 64 and l_11_3 ~= 128 and l_11_3 ~= 8 and l_11_3 ~= 4 and l_11_3 ~= 2 then
          return false
        end
        do return l_11_2.addr < l_11_0 + l_11_1 and l_11_0 + l_11_1 <= l_11_2.addr + l_11_2.size end
        -- DECOMPILER ERROR: 1 unprocessed JMP targets
      end
    end

    if not l_9_0 then
      local l_9_11 = function(l_12_0, l_12_1)
      -- function num : 0_7_0_2 , upvalues : l_9_4
      if not l_9_4(l_12_0, l_12_1) then
        return nil
      end
      local l_12_2 = 65536
      local l_12_3 = 524288
      local l_12_7 = l_12_3 < l_12_1 and l_12_3 or l_12_1
      for l_12_11 = 0, l_12_7, l_12_2 do
        local l_12_8 = ""
        -- DECOMPILER ERROR at PC20: Confused about usage of register: R9 in 'UnsetPending'

        -- DECOMPILER ERROR at PC23: Confused about usage of register: R10 in 'UnsetPending'

        do
          do
            local l_12_13 = nil
            if l_12_7 < R9_PC20 + l_12_2 and l_12_2 - (R9_PC20 + l_12_2 - l_12_7) or l_12_2 <= 0 then
              break
            end
            -- DECOMPILER ERROR at PC35: Confused about usage of register: R11 in 'UnsetPending'

            l_12_8 = l_12_8 .. (mp.ReadProcMem)(l_12_0 + l_12_12, l_12_7 < R9_PC20 + l_12_2 and l_12_2 - (R9_PC20 + l_12_2 - l_12_7) or l_12_2)
            -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
      -- DECOMPILER ERROR at PC39: Confused about usage of register: R5 in 'UnsetPending'

      return l_12_8
    end

      for l_9_15,l_9_16 in ipairs((mp.hstr_full_log)()) do
        local l_9_12, l_9_13, l_9_14, l_9_15, l_9_16 = function(l_13_0)
      -- function num : 0_7_0_3
      local l_13_1 = (mp.bitand)(l_13_0, 4294967295)
      local l_13_2, l_13_3, l_13_4, l_13_5 = (mp.bsplit)(l_13_1, 8)
      return (string.char)(l_13_2) .. (string.char)(l_13_3) .. (string.char)(l_13_4) .. (string.char)(l_13_5)
    end
, function(l_14_0)
      -- function num : 0_7_0_4
      local l_14_1 = (mp.bitand)((mp.shr64)(l_14_0, 32), 4294967295)
      local l_14_2 = (mp.bitand)(l_14_0, 4294967295)
      local l_14_3, l_14_4, l_14_5, l_14_6 = (mp.bsplit)(l_14_2, 8)
      local l_14_7, l_14_8, l_14_9, l_14_10 = (mp.bsplit)(l_14_1, 8)
      return (string.char)(l_14_3) .. (string.char)(l_14_4) .. (string.char)(l_14_5) .. (string.char)(l_14_6) .. (string.char)(l_14_7) .. (string.char)(l_14_8) .. (string.char)(l_14_9) .. (string.char)(l_14_10)
    end
, function(l_15_0, l_15_1)
      -- function num : 0_7_0_5 , upvalues : l_9_7, l_9_6
      if not l_15_0 or not l_15_1 or l_15_1 == "" then
        return nil
      end
      if not l_15_0.addr or not l_15_0.size or not l_15_0.prot or not l_15_0.alloc_prot then
        return nil
      end
      local l_15_5 = "\027\127\238-"
      local l_15_6 = (string.char)((mp.GetSMSProcArchitecture)())
      local l_15_7 = l_9_7(l_15_0.addr)
      local l_15_8 = l_9_6(l_15_0.size)
      do
        local l_15_9 = l_9_6(l_15_0.alloc_prot)
        l_15_5 = l_15_5 .. l_15_6 .. l_15_7 .. l_15_8 .. l_15_9 .. l_9_6(l_15_0.prot) .. l_9_6(#l_15_1) .. l_15_1
        local l_15_2 = nil
        l_15_6 = MpCommon
        l_15_6 = l_15_6.Base64Encode
        local l_15_3 = nil
        l_15_7 = l_15_5
        local l_15_4 = nil
        do return l_15_6(l_15_7) end
        -- DECOMPILER ERROR at PC51: Confused about usage of register R4 for local variables in 'ReleaseLocals'

      end
    end
, function(l_16_0)
      -- function num : 0_7_0_6 , upvalues : l_9_1, l_9_5, l_9_8
      local l_16_1 = 0
      local l_16_2 = (string.format)("DetectedRegions:%s", l_9_1)
      local l_16_3 = (string.format)("%x:%x", l_16_0.addr, l_16_0.size)
      if not IsKeyInRollingQueue(l_16_2, l_16_3, true) then
        local l_16_4 = l_9_5(l_16_0.addr, l_16_0.size)
        local l_16_5 = l_9_8(l_16_0, l_16_4)
        if l_16_5 ~= nil then
          l_16_1 = #l_16_4
          AppendToRollingQueue(l_16_2, l_16_3, l_16_5)
        end
      end
      do
        return l_16_1
      end
    end
, function(l_17_0)
      -- function num : 0_7_0_7 , upvalues : l_9_3
      if not l_17_0 then
        return nil
      end
      local l_17_1 = 0
      local l_17_2 = {}
      -- DECOMPILER ERROR at PC7: No list found for R2 , SetList fails

      -- DECOMPILER ERROR at PC8: Overwrote pending register: R3 in 'AssignReg'

      local l_17_3 = l_17_0(l_17_0.addr - 1)
      while 1 do
        if l_17_3 then
          l_17_2[#l_17_2 + 1] = l_17_3
          l_17_3 = l_9_3(l_17_3.addr - 1)
          l_17_1 = l_17_1 + 1
        end
        if l_17_1 == 8 then
          break
        end
      end
      l_17_1 = 0
      local l_17_4 = l_9_3(l_17_0.addr + l_17_0.size + 1)
      while 1 do
        if l_17_4 then
          l_17_2[#l_17_2 + 1] = l_17_4
          l_17_4 = l_9_3(l_17_4.addr + l_17_4.size + 1)
          l_17_1 = l_17_1 + 1
        end
        if l_17_1 == 8 then
          break
        end
      end
      return l_17_2
    end

        -- DECOMPILER ERROR at PC32: Confused about usage of register: R16 in 'UnsetPending'

        if R16_PC32.matched then
          local l_9_17 = 0
          if l_9_6(R16_PC32.VA) then
            for l_9_22,l_9_23 in ipairs(l_9_16(l_9_6(R16_PC32.VA))) do
              local l_9_23 = nil
              -- DECOMPILER ERROR at PC48: Confused about usage of register: R23 in 'UnsetPending'

              l_9_17 = l_9_17 + l_9_15(R23_PC48)
              if l_9_17 >= 1048576 then
                break
              end
            end
            break
          end
        end
      end
    else
      do
        do
          local l_9_24 = nil
          for l_9_28,l_9_29 in ipairs(l_9_0) do
            local l_9_25, l_9_26, l_9_27, l_9_28, l_9_29 = nil
            -- DECOMPILER ERROR at PC66: Confused about usage of register: R16 in 'UnsetPending'

            local l_9_30 = 0
            if l_9_6(l_9_22) then
              do
                do
                  l_9_30 = l_9_30 + l_9_28(l_9_6(l_9_22))
                  if l_9_30 >= 1048576 then
                    break
                  end
                  -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
          -- DECOMPILER ERROR at PC79: freeLocal<0 in 'ReleaseLocals'

        end
      end
    end
  end

  local l_8_2 = pcall
  local l_8_3 = l_8_1
  do
    local l_8_4 = l_8_0
    do return l_8_2(l_8_3, l_8_4) end
    -- DECOMPILER ERROR at PC15: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

CmdReportParent = function(l_9_0)
  -- function num : 0_8
  local l_9_1 = (mp.getfilename)()
  if l_9_1 ~= nil then
    l_9_1 = (string.lower)(l_9_1)
    local l_9_2 = l_9_1:match("([^\\]+)$")
    if l_9_2 ~= nil and l_9_2 ~= "powershell.exe" and l_9_2 ~= "cmd.exe" and l_9_2 ~= "7zg.exe" and l_9_2 ~= "autoconv.exe" and l_9_2 ~= "robocopy.exe" and l_9_2 ~= "wscript.exe" and l_9_2 ~= "cscript.exe" and l_9_2 ~= "skypeapp.exe" and l_9_2 ~= "ctregsvr.exe" and l_9_2 ~= "reg.exe" and l_9_2 ~= "regedt32.exe" and l_9_2 ~= "regsvr32.exe" and l_9_2 ~= "mpcmdrun.exe" then
      return true
    end
  end
  do
    local l_9_3 = (mp.GetParentProcInfo)()
    if l_9_3 == nil then
      return false
    end
    local l_9_4 = l_9_3.image_path
    if l_9_4 == nil then
      return false
    end
    l_9_4 = (string.lower)(l_9_4)
    local l_9_5 = l_9_4:match("([^\\]+)$")
    if l_9_5 == nil then
      return false
    end
    if l_9_5 == "powershell.exe" or l_9_5 == "cmd.exe" or l_9_5 == "7zg.exe" or l_9_5 == "autoconv.exe" or l_9_5 == "robocopy.exe" or l_9_5 == "wscript.exe" or l_9_5 == "cscript.exe" or l_9_5 == "skypeapp.exe" or l_9_5 == "ctregsvr.exe" or l_9_5 == "reg.exe" or l_9_5 == "regedt32.exe" or l_9_5 == "regsvr32.exe" or l_9_5 == "mpcmdrun.exe" then
      return false
    end
    ;
    (mp.ReportLowfi)(l_9_4, l_9_0)
    return true
  end
end


