-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Necurs\0x0000111a_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2, l_0_9, l_0_10, l_0_12, l_0_14, l_0_15 = nil, nil, nil
for l_0_6,l_0_7 in pairs((Kernel.GetDeviceList)()) do
  local l_0_3, l_0_4, l_0_5 = nil
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R7 in 'UnsetPending'

  -- DECOMPILER ERROR at PC15: Confused about usage of register: R7 in 'UnsetPending'

  if (string.find)(l_0_15.ObjectPath, "\\Device\\NtSecureSys", 1, true) then
    l_0_5 = (l_0_15.GetDriverObject)()
    -- DECOMPILER ERROR at PC24: Confused about usage of register: R7 in 'UnsetPending'

    if ReadPointer32(tonumber(l_0_5.ObjectAddress) + 4) ~= l_0_15.ObjectAddress then
      do
        do
          l_0_4 = ReadPointer32(tonumber(l_0_5.ObjectAddress) + 4)
          do break end
          -- DECOMPILER ERROR at PC29: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC29: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC29: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC29: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC29: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
-- DECOMPILER ERROR at PC31: Confused about usage of register: R1 in 'UnsetPending'

do
  if l_0_4 == nil then
    local l_0_11 = nil
    return l_0_11
  end
  -- DECOMPILER ERROR at PC36: Confused about usage of register: R1 in 'UnsetPending'

  local l_0_16 = nil
  if GetLowestDevice32(l_0_4) == nil then
    l_0_16 = nil
    local l_0_13 = nil
    return l_0_16
  end
  do
    local l_0_17 = nil
    if ReadPointer32(GetLowestDevice32(l_0_4) + 8) == nil then
      l_0_16 = nil
      return l_0_16
    end
    local l_0_18 = nil
    if ReadPointer16(ReadPointer32(GetLowestDevice32(l_0_4) + 8) + 28) > 100 then
      l_0_16 = nil
      return l_0_16
    end
    local l_0_19 = nil
    if ReadPointer32(ReadPointer32(GetLowestDevice32(l_0_4) + 8) + 32) == nil then
      l_0_16 = nil
      return l_0_16
    end
    if (string.find)(MultiByteToChar((Kernel.GetMemoryAsString)(ReadPointer32(ReadPointer32(GetLowestDevice32(l_0_4) + 8) + 32), ReadPointer16(ReadPointer32(GetLowestDevice32(l_0_4) + 8) + 28))), "FileSystem\\Ntfs", 1, true) then
      local l_0_20 = nil
      local l_0_21 = nil
      if (l_0_18.GetIrpAddress)("IRP_MJ_CREATE") == (l_0_18.GetIrpAddress)("IRP_MJ_INTERNAL_DEVICE_CONTROL") then
        l_0_16 = (Kernel.RkPattScan)((l_0_18.GetIrpAddress)("IRP_MJ_INTERNAL_DEVICE_CONTROL"))
        if l_0_16 and (string.find)(l_0_16.DetectionName, "/Necurs", 1, true) then
          local l_0_22 = nil
          l_0_16.DetectionInfo = (string.lower)(l_0_18.ObjectName .. "," .. GetSystemDriverPath() .. l_0_18.ObjectName .. ".sys")
        else
          do
            do
              l_0_16 = nil
              if l_0_16 then
                return l_0_16
              end
            end
          end
        end
      end
    end
  end
end

