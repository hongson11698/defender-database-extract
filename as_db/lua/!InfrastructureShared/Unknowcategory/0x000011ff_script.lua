-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000011ff_luac 

-- params : ...
-- function num : 0
ReadPointer32 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (Kernel.GetMemoryAsString)(l_1_0, 4)
  if l_1_1 == nil then
    return 0
  end
  return (string.byte)(l_1_1, 1) + (string.byte)(l_1_1, 2) * 256 + (string.byte)(l_1_1, 3) * 256 * 256 + (string.byte)(l_1_1, 4) * 256 * 256 * 256
end

ReadPointer32_s = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = (Kernel.GetMemoryAsString)(l_2_0, 4)
  if l_2_1 == nil then
    return false, 0
  end
  local l_2_2 = (string.byte)(l_2_1, 1)
  local l_2_3 = (string.byte)(l_2_1, 2)
  local l_2_4 = (string.byte)(l_2_1, 3)
  local l_2_5 = (string.byte)(l_2_1, 4)
  local l_2_6 = l_2_2 + l_2_3 * 256 + l_2_4 * 256 * 256 + l_2_5 * 256 * 256 * 256
  return true, l_2_6
end

GetPEOffset = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = ReadPointer32(l_3_0 + 60)
  if ReadPointer32(l_3_0 + l_3_1) == 17744 then
    return true, l_3_1
  else
    return false, 0
  end
end

GetImageDataDirectory = function(l_4_0, l_4_1)
  -- function num : 0_3
  if l_4_1 > 15 then
    return false, 0, 0
  end
  local l_4_2, l_4_3 = GetPEOffset(l_4_0)
  if not l_4_2 then
    return false, 0, 0
  end
  local l_4_4 = nil
  local l_4_5 = (Kernel.GetMemoryAsString)(l_4_0 + l_4_3 + 24, 2)
  local l_4_6 = (readu16(l_4_5, 0))
  local l_4_7, l_4_8, l_4_9 = nil, nil, nil
  if l_4_6 == 267 then
    l_4_4 = ReadPointer32(l_4_0 + l_4_3 + 116)
    if l_4_4 < l_4_1 then
      return false, 0, 0
    end
    l_4_7 = l_4_0 + l_4_3 + 120 + l_4_1 * 8
    l_4_2 = ReadPointer32_s(l_4_7)
    if not l_4_2 then
      return false, 0, 0
    end
    l_4_2 = ReadPointer32_s(l_4_7 + 4)
    if not l_4_2 then
      return false, 0, 0
    end
    return true, l_4_8, l_4_9
  else
    if l_4_6 == 523 then
      l_4_4 = ReadPointer32(l_4_0 + l_4_3 + 132)
      if l_4_4 < l_4_1 then
        return false, 0, 0
      end
      l_4_7 = l_4_0 + l_4_3 + 136 + l_4_1 * 8
      -- DECOMPILER ERROR at PC91: Overwrote pending register: R8 in 'AssignReg'

      l_4_2 = ReadPointer32_s(l_4_7)
      if not l_4_2 then
        return false, 0, 0
      end
      -- DECOMPILER ERROR at PC102: Overwrote pending register: R9 in 'AssignReg'

      l_4_2 = ReadPointer32_s(l_4_7 + 4)
      if not l_4_2 then
        return false, 0, 0
      end
      return true, l_4_8, l_4_9
    else
      return false, 0, 0
    end
  end
end

GetEntryPoint = function(l_5_0)
  -- function num : 0_4
  local l_5_1, l_5_2 = GetPEOffset(l_5_0)
  if not l_5_1 then
    return false, 0, 0
  end
  local l_5_3 = l_5_0 + l_5_2 + 40
  if not ReadPointer32_s(l_5_3) then
    return false, 0
  end
  return true, l_5_0 + l_5_3
end


