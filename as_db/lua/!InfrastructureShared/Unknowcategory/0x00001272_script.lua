-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001272_luac 

-- params : ...
-- function num : 0
NecursDeviceTrigger = function()
  -- function num : 0_0
  local l_1_0 = (sysio.GetObjectDir)("\\Device")
  local l_1_1 = 0
  for l_1_5,l_1_6 in pairs(l_1_0) do
    if (string.find)(l_1_5, "NtSecureSys", 1, true) == 1 then
      l_1_1 = l_1_1 + 1
      break
    end
  end
  do
    if l_1_1 == 1 then
      return true
    end
    return false
  end
end

NecursServiceScan = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = "HKLM\\System\\CurrentControlSet\\Services"
  local l_2_2 = (sysio.RegOpenKeyDiff)(l_2_1)
  if not l_2_2 then
    return false, 1011
  end
  local l_2_3 = (sysio.RegEnumKeys)(l_2_2)
  if not l_2_3 then
    return false, 1011
  end
  for l_2_7,l_2_8 in pairs(l_2_3) do
    if (string.find)(l_2_8, "^%x%x%x%x%x%x%x%x%x%x%x%x") then
      if not (sysio.RegOpenKey)(l_2_1 .. "\\" .. l_2_8) then
        local l_2_9 = (sysio.RegOpenSubkey)(l_2_2, l_2_8)
        if not l_2_9 then
          return false, 1011
        end
        local l_2_10 = (sysio.GetRegValueAsString)(l_2_9, "DisplayName")
        if l_2_10 ~= "syshost.exe" then
          return false, 1010
        end
        local l_2_11 = (sysio.GetRegValueAsString)(l_2_9, "ImagePath")
        l_2_11 = SystemPathToDosName(l_2_11)
        if (sysio.ReadFileRaw)(l_2_11, 0, 2) ~= "MZ" then
          return false, 191
        end
        if not ((sysio.GetLastResult)()).Success then
          return false, 193
        end
        if ((((sysio.ReadPEHeaderRaw)(l_2_11)).DataDirectory)[3]).RVA == 0 then
          l_2_0[1] = l_2_8
          l_2_0[2] = l_2_11
          return true, 0
        end
      else
        do
          do
            do return false, 1243 end
            -- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
  return false, 1243
end

SystemPathToDosName = function(l_3_0)
  -- function num : 0_2
  local l_3_1, l_3_2 = (string.find)(l_3_0, "\\SystemRoot\\", 1, true)
  if l_3_2 ~= nil and l_3_2 > 1 then
    local l_3_3 = (string.sub)(l_3_0, l_3_2)
    local l_3_4 = (sysio.ExpandFilePath)("%SystemRoot%")
    if not l_3_4 then
      return l_3_0
    end
    for l_3_8,l_3_9 in pairs(l_3_4) do
      if not (string.find)(l_3_9, "%%") then
        l_3_3 = l_3_9 .. l_3_3
        return l_3_3
      end
    end
  end
  do
    return l_3_0
  end
end

GetSystemDriverPath = function()
  -- function num : 0_3
  local l_4_0 = (sysio.ExpandFilePath)("%SystemRoot%")
  if not l_4_0 then
    return nil
  end
  for l_4_4,l_4_5 in pairs(l_4_0) do
    if not (string.find)(l_4_5, "%%") then
      l_4_5 = l_4_5 .. "\\System32\\drivers\\"
      return l_4_5
    end
  end
  return nil
end

ReadFilePointer16 = function(l_5_0, l_5_1)
  -- function num : 0_4
  local l_5_2 = (sysio.ReadFileRaw)(l_5_0, l_5_1, 2)
  if l_5_2 == nil then
    return nil
  end
  l_5_2 = readu16(l_5_2, 0)
  return l_5_2
end

ReadFilePointer32 = function(l_6_0, l_6_1)
  -- function num : 0_5
  local l_6_2 = (sysio.ReadFileRaw)(l_6_0, l_6_1, 4)
  if l_6_2 == nil then
    return nil
  end
  l_6_2 = readu32(l_6_2, 0)
  return l_6_2
end

ReadPointer16 = function(l_7_0)
  -- function num : 0_6
  local l_7_1 = (Kernel.GetMemoryAsString)(l_7_0, 2)
  if l_7_1 == nil then
    return 0
  end
  return readu16(l_7_1, 0)
end

ReadPointer32 = function(l_8_0)
  -- function num : 0_7
  local l_8_1 = (Kernel.GetMemoryAsString)(l_8_0, 4)
  if l_8_1 == nil then
    return 0
  end
  return readu32(l_8_1, 0)
end

ReadPointer64 = function(l_9_0)
  -- function num : 0_8
  local l_9_1 = (Kernel.GetMemoryAsString)(l_9_0, 8)
  if l_9_1 == nil then
    return 0
  end
  return readu64(l_9_1, 0)
end

GetLowestDevice32 = function(l_10_0)
  -- function num : 0_9
  if l_10_0 == 0 then
    return nil
  end
  local l_10_1 = l_10_0
  local l_10_2 = nil
  for l_10_6 = 1, 10 do
    if l_10_1 == 0 then
      return l_10_0
    else
      l_10_2 = ReadPointer32(l_10_1 + 176)
      if l_10_2 ~= 0 then
        do
          if l_10_2 == nil then
            break
          end
          l_10_1 = ReadPointer32(l_10_2 + 24)
          if l_10_1 ~= 0 and l_10_1 ~= nil then
            l_10_0 = l_10_1
          end
          -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  return nil
end

GetLowestDevice64 = function(l_11_0)
  -- function num : 0_10
  if l_11_0 == 0 then
    return nil
  end
  local l_11_1 = l_11_0
  local l_11_2 = nil
  for l_11_6 = 1, 10 do
    if l_11_1 == 0 then
      return l_11_0
    else
      l_11_2 = ReadPointer64(l_11_1 + 312)
      if l_11_2 ~= 0 then
        do
          if l_11_2 == nil then
            break
          end
          l_11_1 = ReadPointer64(l_11_2 + 48)
          if l_11_1 ~= 0 and l_11_1 ~= nil then
            l_11_0 = l_11_1
          end
          -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  return nil
end

MultiByteToChar = function(l_12_0)
  -- function num : 0_11
  if l_12_0 == nil then
    return nil
  end
  local l_12_1 = {}
  local l_12_2 = 0
  for l_12_6 = 1, (string.len)(l_12_0) do
    local l_12_9, l_12_10 = nil
    l_12_9 = string
    l_12_9 = l_12_9.byte
    l_12_10 = l_12_0
    l_12_9 = l_12_9(l_12_10, l_12_6)
    if l_12_9 ~= 0 then
      l_12_9 = string
      l_12_9 = l_12_9.char
      l_12_10 = string
      l_12_10 = l_12_10.byte
      do
        local l_12_12, l_12_13, l_12_14 = .end
        l_12_9 = l_12_9(l_12_10(l_12_0, l_12_6), l_12_12, l_12_13, l_12_14)
        local l_12_11 = nil
        l_12_1[l_12_2] = l_12_9
        l_12_2 = l_12_2 + 1
        -- DECOMPILER ERROR at PC30: Confused about usage of register R8 for local variables in 'ReleaseLocals'

        -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  local l_12_7 = nil
  do
    local l_12_8 = nil
    do return (table.concat)(l_12_1) end
    -- DECOMPILER ERROR at PC36: Confused about usage of register R6 for local variables in 'ReleaseLocals'

  end
end


