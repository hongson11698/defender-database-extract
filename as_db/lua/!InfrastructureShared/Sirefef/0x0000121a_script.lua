-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Sirefef\0x0000121a_luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0, l_1_1)
  -- function num : 0_0
  do
    if not l_1_1 then
      local l_1_2, l_1_3, l_1_4 = "\\SystemRoot\\system32\\drivers\\" .. l_1_0 .. ".sys"
    else
    end
    local l_1_5 = l_1_1
    local l_1_6 = string.match
    local l_1_7 = l_1_5
    do return l_1_6(l_1_7, "(%w+%.[sS][yY][sS])$") end
    -- DECOMPILER ERROR at PC14: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  end
end

local l_0_3 = function(l_2_0)
  -- function num : 0_1 , upvalues : l_0_0
  if l_2_0 >= 2147483648 then
    l_2_0 = l_2_0 - 4294967296
  end
  local l_2_1 = "HKLM\\System\\CurrentControlSet\\Services"
  local l_2_2 = (sysio.RegOpenKey)(l_2_1)
  if not l_2_2 then
    return nil
  end
  local l_2_3 = (sysio.RegEnumKeys)(l_2_2)
  if not l_2_3 then
    return nil
  end
  for l_2_7,l_2_8 in pairs(l_2_3) do
    local l_2_9 = (sysio.RegOpenKey)(l_2_1 .. "\\" .. l_2_8)
    if l_2_9 then
      local l_2_10 = (sysio.GetRegValueAsString)(l_2_9, "Type")
      if l_2_10 and (l_2_10 == (string.char)(1) or l_2_10 == (string.char)(2)) then
        local l_2_11 = (sysio.GetRegValueAsString)(l_2_9, "ImagePath")
        local l_2_12 = l_0_0(l_2_8, l_2_11)
        if l_2_12 and (sysio.DriverNameHash)(l_2_12) == l_2_0 then
          return l_2_8
        end
      end
    end
  end
end

for l_0_7,l_0_8 in pairs((Kernel.GetDeviceList)()) do
  local l_0_4, l_0_5 = function(l_3_0)
  -- function num : 0_2 , upvalues : l_0_1
  local l_3_6, l_3_7, l_3_8, l_3_9, l_3_16, l_3_17 = nil
  local l_3_1 = (Kernel.GetMemoryAsString)(l_3_0, 1)
  if (string.byte)(l_3_1, 1) == 85 then
    local l_3_2 = l_3_0 + 40432
    local l_3_3 = ReadPointer32(l_3_2)
    local l_3_4 = l_0_1
    local l_3_5 = l_3_3
    do return l_3_4(l_3_5) end
    -- DECOMPILER ERROR at PC20: Confused about usage of register R5 for local variables in 'ReleaseLocals'

  end
  l_3_2 = string
  l_3_2 = l_3_2.byte
  l_3_3 = l_3_1
  l_3_2 = l_3_2(l_3_3, 1)
  if l_3_2 == 139 then
    l_3_2 = l_3_0 - 565
    local l_3_10 = nil
    l_3_3 = Kernel
    l_3_3 = l_3_3.GetMemoryAsString
    l_3_3 = l_3_3(l_3_2, l_3_10)
    local l_3_11 = nil
    if l_3_3 == nil then
      return nil
    end
    -- DECOMPILER ERROR at PC39: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC46: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC47: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC52: Overwrote pending register: R5 in 'AssignReg'

    if (string.byte)(l_3_10, l_3_11) == 139 and (string.byte)(l_3_10, l_3_11) == 21 then
      local l_3_12 = nil
      -- DECOMPILER ERROR at PC54: Overwrote pending register: R5 in 'AssignReg'

      -- DECOMPILER ERROR at PC55: Overwrote pending register: R6 in 'AssignReg'

      l_3_10 = l_3_10(l_3_11)
      local l_3_13 = nil
      -- DECOMPILER ERROR at PC57: Overwrote pending register: R6 in 'AssignReg'

      local l_3_14 = nil
      l_3_12 = l_3_10
      do
        local l_3_15 = nil
        do return l_3_11(l_3_12) end
        -- DECOMPILER ERROR at PC61: Confused about usage of register R7 for local variables in 'ReleaseLocals'

        local l_3_18 = nil
        -- DECOMPILER ERROR at PC63: Overwrote pending register: R5 in 'AssignReg'

        l_3_10 = l_3_10(l_3_0 - 560, l_3_18)
        local l_3_19 = nil
        if l_3_10 == nil then
          return nil
        end
        -- DECOMPILER ERROR at PC73: Overwrote pending register: R7 in 'AssignReg'

        -- DECOMPILER ERROR at PC80: Overwrote pending register: R7 in 'AssignReg'

        -- DECOMPILER ERROR at PC81: Overwrote pending register: R8 in 'AssignReg'

        -- DECOMPILER ERROR at PC86: Confused about usage of register: R4 in 'UnsetPending'

        -- DECOMPILER ERROR at PC86: Overwrote pending register: R7 in 'AssignReg'

        if (string.byte)(l_3_18, l_3_19) == 139 and (string.byte)(l_3_18, l_3_19) == 13 then
          local l_3_20 = nil
          -- DECOMPILER ERROR at PC88: Overwrote pending register: R7 in 'AssignReg'

          -- DECOMPILER ERROR at PC89: Overwrote pending register: R8 in 'AssignReg'

          l_3_18 = l_3_18(l_3_19)
          local l_3_21 = nil
          -- DECOMPILER ERROR at PC91: Overwrote pending register: R8 in 'AssignReg'

          local l_3_22 = nil
          l_3_20 = l_3_18
          do
            local l_3_23 = nil
            do return l_3_19(l_3_20) end
            -- DECOMPILER ERROR at PC95: Confused about usage of register R9 for local variables in 'ReleaseLocals'

            l_3_2 = nil
            do return l_3_2 end
            -- DECOMPILER ERROR at PC97: Confused about usage of register R8 for local variables in 'ReleaseLocals'

          end
        end
      end
    end
  end
end
, nil
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R8 in 'UnsetPending'

  do
    do
      for l_0_13 in pairs((R8_PC12.ParseDeviceChain)()) do
        local l_0_11 = nil
        -- DECOMPILER ERROR at PC19: Confused about usage of register: R13 in 'UnsetPending'

        if ReadPointer32(tonumber(R13_PC19.ObjectAddress) + 40) ~= 0 then
          local l_0_16 = nil
          if ReadPointer32(ReadPointer32(tonumber(R13_PC19.ObjectAddress) + 40) + 4) == l_0_15.ObjectAddress then
            local l_0_17 = nil
            local l_0_18 = nil
            local l_0_19 = nil
            if ReadPointer32(ReadPointer32(ReadPointer32(ReadPointer32(tonumber(R13_PC19.ObjectAddress) + 40) + 8) + 8) + 56) and not (Kernel.GetModuleForAddress)(ReadPointer32(ReadPointer32(ReadPointer32(ReadPointer32(tonumber(R13_PC19.ObjectAddress) + 40) + 8) + 8) + 56)) then
              l_0_5 = (Kernel.RkPattScan)(ReadPointer32(ReadPointer32(ReadPointer32(ReadPointer32(tonumber(R13_PC19.ObjectAddress) + 40) + 8) + 8) + 56))
              if l_0_5 and (string.find)(l_0_5.DetectionName, "Sirefef", 1, true) then
                local l_0_20 = nil
                if l_0_4(ReadPointer32(ReadPointer32(ReadPointer32(ReadPointer32(tonumber(R13_PC19.ObjectAddress) + 40) + 8) + 8) + 56)) then
                  l_0_5.DetectionInfo = l_0_4(ReadPointer32(ReadPointer32(ReadPointer32(ReadPointer32(tonumber(R13_PC19.ObjectAddress) + 40) + 8) + 8) + 56))
                end
              else
                do
                  do
                    do
                      l_0_5 = nil
                      if l_0_5 then
                        break
                      end
                      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_STMT

                    end
                  end
                end
              end
            end
          end
        end
      end
      if l_0_5 then
        break
      end
      -- DECOMPILER ERROR at PC82: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
-- DECOMPILER ERROR at PC84: Confused about usage of register: R3 in 'UnsetPending'

-- DECOMPILER ERROR at PC86: Confused about usage of register: R3 in 'UnsetPending'

if l_0_5 then
  do
    do return l_0_5 end
    -- DECOMPILER ERROR at PC87: freeLocal<0 in 'ReleaseLocals'

  end
end

