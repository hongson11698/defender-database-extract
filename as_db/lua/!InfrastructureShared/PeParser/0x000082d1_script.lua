-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\PeParser\0x000082d1_luac 

-- params : ...
-- function num : 0
toDec = function(l_1_0)
  -- function num : 0_0
  while 1 do
    -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  end
  if #l_1_0 > 0 then
    return 0 * 16 + ((string.find)("0123456789abcdef", l_1_0:sub(1, 1)) - 1)
  end
end

local l_0_0 = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = 0
  for l_2_5 = #l_2_0, 1, -1 do
    l_2_1 = l_2_1 * 256 + (string.byte)(l_2_0, l_2_5, l_2_5)
  end
  return l_2_1
end

local l_0_1 = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = ""
  for l_3_5 = #l_3_0, 1, -2 do
    l_3_1 = l_3_1 .. (string.sub)(l_3_0, l_3_5 - 1, l_3_5)
  end
  return l_3_1
end

get_hex = function(l_4_0)
  -- function num : 0_3 , upvalues : l_0_1
  local l_4_1 = l_4_0:gsub(".", function(l_5_0)
    -- function num : 0_3_0
    local l_5_1 = string.format
    local l_5_2 = "%02X"
    do
      local l_5_3, l_5_4 = (string.byte)(l_5_0), .end
      do return l_5_1(l_5_2, l_5_3, l_5_4) end
      -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
)
  l_4_1 = l_0_1(l_4_1)
  while #l_4_1 > 1 and l_4_1:sub(1, 1) == "0" do
    l_4_1 = l_4_1:sub(2, -1)
  end
  return l_4_1
end

local l_0_2 = function(l_5_0, l_5_1, l_5_2, l_5_3)
  -- function num : 0_4
  if not l_5_3 then
    for l_5_7,l_5_8 in ipairs(l_5_0) do
      local l_5_4 = {}
      -- DECOMPILER ERROR at PC11: Confused about usage of register: R9 in 'UnsetPending'

      do
        local l_5_15, l_5_16, l_5_18, l_5_19 = (sysio.ReadFile)(l_5_1, l_5_2, R9_PC11.size) or "\000"
        -- DECOMPILER ERROR at PC18: Confused about usage of register: R9 in 'UnsetPending'

        -- DECOMPILER ERROR at PC22: Confused about usage of register: R10 in 'UnsetPending'

        if l_5_9.is_str then
          for l_5_13 = 1, #l_5_15 do
            local l_5_10, l_5_11 = nil
            -- DECOMPILER ERROR at PC26: Confused about usage of register: R14 in 'UnsetPending'

            if l_5_11:sub(R14_PC26, R14_PC26) == "\000" then
              do
                do
                  l_5_4[l_5_10.name] = l_5_11:sub(1, R14_PC26 - 1)
                  do break end
                  -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
          -- DECOMPILER ERROR at PC39: Confused about usage of register: R9 in 'UnsetPending'

          local l_5_17 = nil
          -- DECOMPILER ERROR at PC44: Confused about usage of register: R10 in 'UnsetPending'

          l_5_4[l_5_10.name] = l_5_4[l_5_17.name] or l_5_11
        else
          do
            -- DECOMPILER ERROR at PC47: Confused about usage of register: R9 in 'UnsetPending'

            do
              local l_5_20 = nil
              -- DECOMPILER ERROR at PC49: Confused about usage of register: R10 in 'UnsetPending'

              l_5_4[l_5_17.name] = get_hex(l_5_11)
              -- DECOMPILER ERROR at PC52: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC52: LeaveBlock: unexpected jumping out IF_ELSE_STMT

              -- DECOMPILER ERROR at PC52: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC52: LeaveBlock: unexpected jumping out DO_STMT

            end
          end
        end
      end
    end
    -- DECOMPILER ERROR at PC54: Confused about usage of register: R4 in 'UnsetPending'

    return l_5_4, l_5_2
  end
end

ParsePE = function(l_6_0)
  -- function num : 0_5 , upvalues : l_0_0, l_0_2
  local l_6_1 = 0
  local l_6_2 = (sysio.ReadFile)(l_6_0, l_6_1, 2)
  if l_6_2 ~= "MZ" then
    return nil, "Not a valid image"
  end
  l_6_1 = 60
  local l_6_3 = l_0_0((sysio.ReadFile)(l_6_0, l_6_1, 4))
  l_6_1 = l_6_3
  local l_6_4 = l_0_2
  local l_6_5 = {}
  local l_6_6 = {}
  l_6_6.size = 4
  l_6_6.name = "PEheader"
  l_6_6.is_str = true
  local l_6_7 = {}
  l_6_7.size = 2
  l_6_7.name = "Machine"
  local l_6_8 = {}
  l_6_8.size = 2
  l_6_8.name = "NumberOfSections"
  local l_6_9 = {}
  l_6_9.size = 4
  l_6_9.name = "TimeDateStamp"
  local l_6_10 = {}
  l_6_10.size = 4
  l_6_10.name = "PointerToSymbolTable"
  local l_6_11 = {}
  l_6_11.size = 4
  l_6_11.name = "NumberOfSymbols"
  local l_6_12 = {}
  l_6_12.size = 2
  l_6_12.name = "SizeOfOptionalHeader"
  local l_6_13 = {}
  l_6_13.size = 2
  l_6_13.name = "Characteristics"
  -- DECOMPILER ERROR at PC49: No list found for R5 , SetList fails

  l_6_6 = l_6_0
  l_6_7 = l_6_1
  l_6_4 = l_6_4(l_6_5, l_6_6, l_6_7)
  l_6_6 = l_6_4.PEheader
  if l_6_6 ~= "PE" then
    l_6_6 = nil
    l_6_7 = "Invalid PE header"
    return l_6_6, l_6_7
  end
  l_6_6 = toDec
  l_6_7 = l_6_4.SizeOfOptionalHeader
  l_6_6 = l_6_6(l_6_7)
  if l_6_6 > 0 then
    l_6_6 = l_0_2
    local l_6_14 = {}
    l_6_14.size = 4
    l_6_14.name = "AddressOfEntryPoint"
    local l_6_15 = {}
    l_6_15.size = 4
    l_6_15.name = "BaseOfCode"
    l_6_13, l_6_12, l_6_11, l_6_10, l_6_9, l_6_8 = {size = 4, name = "SizeOfUninitializedData"}, {size = 4, name = "SizeOfInitializedData"}, {size = 4, name = "SizeOfCode"}, {size = 1, name = "MinorLinkerVersion"}, {size = 1, name = "MajorLinkerVersion"}, {size = 2, name = "Magic"}
    l_6_8 = l_6_0
    l_6_9 = 
    l_6_10 = l_6_4
    l_6_6, l_6_7 = l_6_6(l_6_7, l_6_8, l_6_9, l_6_10), {l_6_8, l_6_9, l_6_10, l_6_11, l_6_12, l_6_13, l_6_14, l_6_15}
    l_6_5 = 
    l_6_4 = l_6_6
    l_6_6 = l_6_4.Magic
    if l_6_6 ~= "20b" then
      do
        l_6_6 = l_6_4.Magic
        l_6_6 = l_6_6 == "20B"
        if not l_6_6 then
          l_6_7 = l_0_2
          l_6_9 = {size = 4, name = "BaseOfData"}
          l_6_9 = l_6_0
          l_6_10 = l_6_5
          l_6_11 = l_6_4
          l_6_7, l_6_8 = l_6_7(l_6_8, l_6_9, l_6_10, l_6_11), {l_6_9}
          l_6_5 = 
          l_6_4 = l_6_7
        end
        l_6_7 = 4
        if l_6_6 then
          l_6_7 = 8
        end
        l_6_8 = l_0_2
        local l_6_16 = {}
        l_6_16.size = 2
        l_6_16.name = "MinorImageVersion"
        local l_6_17 = {}
        l_6_17.size = 2
        l_6_17.name = "MajorSubsystemVersion"
        local l_6_18 = {}
        l_6_18.size = 2
        l_6_18.name = "MinorSubsystemVersion"
        local l_6_19 = {}
        l_6_19.size = 4
        l_6_19.name = "Win32VersionValue"
        local l_6_20 = {}
        l_6_20.size = 4
        l_6_20.name = "SizeOfImage"
        local l_6_21 = {}
        l_6_21.size = 4
        l_6_21.name = "SizeOfHeaders"
        local l_6_22 = {}
        l_6_22.size = 4
        l_6_22.name = "CheckSum"
        local l_6_23 = {}
        l_6_23.size = 2
        l_6_23.name = "Subsystem"
        local l_6_24 = {}
        l_6_24.size = 2
        l_6_24.name = "DllCharacteristics"
        local l_6_25 = {}
        l_6_25.size = l_6_7
        l_6_25.name = "SizeOfStackReserve"
        local l_6_26 = {}
        l_6_26.size = l_6_7
        l_6_26.name = "SizeOfStackCommit"
        local l_6_27 = {}
        l_6_27.size = l_6_7
        l_6_27.name = "SizeOfHeapReserve"
        local l_6_28 = {}
        l_6_28.size = l_6_7
        l_6_28.name = "SizeOfHeapCommit"
        local l_6_29 = {}
        l_6_29.size = 4
        l_6_29.name = "LoaderFlags"
        local l_6_30 = {}
        l_6_30.size = 4
        l_6_30.name = "NumberOfRvaAndSizes"
        l_6_15, l_6_14, l_6_13, l_6_12, l_6_11, l_6_10 = {size = 2, name = "MajorImageVersion"}, {size = 2, name = "MinorOperatingSystemVersion"}, {size = 2, name = "MajorOperatingSystemVersion"}, {size = 4, name = "FileAlignment"}, {size = 4, name = "SectionAlignment"}, {size = l_6_7, name = "ImageBase"}
        l_6_10 = l_6_0
        l_6_11 = l_6_5
        l_6_12 = l_6_4
        l_6_8, l_6_9 = l_6_8(l_6_9, l_6_10, l_6_11, l_6_12), {l_6_10, l_6_11, l_6_12, l_6_13, l_6_14, l_6_15, l_6_16, l_6_17, l_6_18, l_6_19, l_6_20, l_6_21, l_6_22, l_6_23, l_6_24, l_6_25, l_6_26, l_6_27, l_6_28, l_6_29, l_6_30}
        l_6_5 = 
        l_6_4 = l_6_8
        l_6_8 = 1
        l_6_9 = toDec
        l_6_10 = l_6_4.NumberOfRvaAndSizes
        l_6_9 = l_6_9(l_6_10)
        l_6_10 = 1
        for l_6_11 = l_6_8, l_6_9, l_6_10 do
          l_6_12 = l_6_4.DataDirectory
          if not l_6_12 then
            l_6_4.DataDirectory, l_6_12 = l_6_12, {}
            l_6_12 = l_6_4.DataDirectory
            l_6_13 = l_0_2
            l_6_16, l_6_15 = {size = 4, name = "Size"}, {size = 4, name = "VirtualAddress"}
            l_6_15 = l_6_0
            l_6_16 = l_6_5
            l_6_13, l_6_14 = l_6_13(l_6_14, l_6_15, l_6_16), {l_6_15, l_6_16}
            l_6_5 = 
            l_6_12[l_6_11] = l_6_13
            -- DECOMPILER ERROR at PC221: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC221: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
        for i_1,l_6_12 in ipairs({"ExportTable", "ImportTable", l_6_12, l_6_13, l_6_14, l_6_15, l_6_16, l_6_17, l_6_18, l_6_19, l_6_20, l_6_21, l_6_22, l_6_23, l_6_24, l_6_25}) do
          -- DECOMPILER ERROR at PC243: Overwrote pending register: R13 in 'AssignReg'

          -- DECOMPILER ERROR at PC244: Overwrote pending register: R14 in 'AssignReg'

          -- DECOMPILER ERROR at PC245: Overwrote pending register: R14 in 'AssignReg'

          l_6_13[l_6_12] = l_6_14
          -- DECOMPILER ERROR at PC247: Overwrote pending register: R13 in 'AssignReg'

          -- DECOMPILER ERROR at PC248: Overwrote pending register: R13 in 'AssignReg'

          -- DECOMPILER ERROR at PC251: Overwrote pending register: R13 in 'AssignReg'

          -- DECOMPILER ERROR at PC252: Overwrote pending register: R13 in 'AssignReg'

          if l_6_13 then
            l_6_13.name = l_6_12
          end
        end
        l_6_6 = 1
        l_6_7 = toDec
        l_6_7 = l_6_7(l_6_4.NumberOfSections)
        for i = l_6_6, l_6_7 do
          if not l_6_4.Sections then
            l_6_4.Sections = {}
            local l_6_31 = nil
            local l_6_32 = nil
            local l_6_33 = nil
            local l_6_34 = nil
            local l_6_35 = nil
            local l_6_36 = nil
            local l_6_37 = nil
            local l_6_38 = nil
            do
              local l_6_39 = nil
              -- DECOMPILER ERROR at PC302: Overwrote pending register: R13 in 'AssignReg'

              -- DECOMPILER ERROR at PC303: Overwrote pending register: R14 in 'AssignReg'

              -- DECOMPILER ERROR at PC306: Confused about usage of register: R10 in 'UnsetPending'

              ;
              (l_6_4.Sections)[i] = l_0_2({l_6_13, l_6_14, l_6_15, l_6_16, l_6_17, l_6_18, l_6_19, l_6_20, l_6_21, l_6_22}, l_6_13, l_6_14)
              -- DECOMPILER ERROR at PC307: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC307: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        do return l_6_4 end
        -- DECOMPILER ERROR: 7 unprocessed JMP targets
      end
    end
  end
end

Get_section_info = function(l_7_0, l_7_1)
  -- function num : 0_6
  local l_7_2 = {}
  if l_7_0 == nil then
    return l_7_2
  end
  if l_7_0.Sections then
    for l_7_6,l_7_7 in ipairs(l_7_0.Sections) do
      if (string.lower)(l_7_7.Name) == l_7_1 then
        l_7_2.PointerToRawData = toDec(l_7_7.PointerToRawData)
        l_7_2.SizeOfRawData = toDec(l_7_7.SizeOfRawData)
        l_7_2.VirtualAddress = toDec(l_7_7.VirtualAddress)
        l_7_2.VirtualSize = toDec(l_7_7.VirtualSize)
        return l_7_2
      end
    end
  end
  do
    return l_7_2
  end
end

local l_0_3 = function(l_8_0, l_8_1)
  -- function num : 0_7
  local l_8_2 = (sysio.ReadFile)(l_8_0, l_8_1, 20)
  local l_8_3 = (mp.readu_u16)(l_8_2, 15)
  local l_8_4 = l_8_1 + 16
  return l_8_3, l_8_4
end

local l_0_4 = function(l_9_0, l_9_1)
  -- function num : 0_8
  local l_9_2 = (sysio.ReadFile)(l_9_0, l_9_1, 20)
  local l_9_3 = (mp.readu_u32)(l_9_2, 1)
  local l_9_4 = (mp.readu_u32)(l_9_2, 5)
  local l_9_5 = (mp.bitand)(l_9_3, 2147483647)
  local l_9_6 = (mp.bitand)(l_9_3, 4294901760)
  local l_9_7 = (mp.bitand)(l_9_3, 65535)
  local l_9_8 = (mp.shr32)((mp.bitand)(l_9_4, 2147483648), 31)
  local l_9_9 = (mp.bitand)(l_9_4, 2147483647)
  return l_9_3, l_9_4, l_9_5, l_9_6, l_9_7, l_9_8, l_9_9
end

do
  local l_0_5 = function(l_10_0, l_10_1)
  -- function num : 0_9
  local l_10_2 = (sysio.ReadFile)(l_10_0, l_10_1, 20)
  local l_10_3 = (mp.readu_u32)(l_10_2, 1)
  local l_10_4 = (mp.readu_u32)(l_10_2, 5)
  local l_10_5 = (mp.readu_u32)(l_10_2, 9)
  local l_10_6 = (mp.readu_u32)(l_10_2, 13)
  return l_10_3, l_10_4, l_10_5, l_10_6
end

  -- WARNING: undefined locals caused missing assignments!
end

