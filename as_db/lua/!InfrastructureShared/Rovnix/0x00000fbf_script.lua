-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Rovnix\0x00000fbf_luac 

-- params : ...
-- function num : 0
local l_0_0 = function()
  -- function num : 0_0
  local l_1_0 = ((Kernel.GetDiskDevicePathAsString)())
  local l_1_1 = nil
  local l_1_2 = false
  if l_1_0 then
    for l_1_6,l_1_7 in pairs((Kernel.GetDeviceList)()) do
      if (string.lower)(l_1_7.ObjectPath) == (string.lower)(l_1_0) then
        do
          do
            local l_1_8 = (l_1_7.ParseDeviceChain)()
            for l_1_12 in pairs(l_1_8) do
              local l_1_13 = (l_1_12.GetDriverObject)()
              local l_1_14 = (l_1_13.GetIrpAddress)("IRP_MJ_INTERNAL_DEVICE_CONTROL")
              l_1_1 = (Kernel.RkPattScan)(l_1_14)
              if l_1_1 and (string.find)(l_1_1.DetectionName, "/Rovnix", 1, true) then
                do
                  do
                    l_1_2 = true
                    do break end
                    -- DECOMPILER ERROR at PC52: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC52: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC52: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
            end
            if l_1_2 then
              break
            end
            -- DECOMPILER ERROR at PC57: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC57: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC57: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
  if l_1_2 then
    return l_1_1
  else
    return nil
  end
end

local l_0_1 = nil
l_0_1 = l_0_0()
if l_0_1 then
  return l_0_1
end
l_0_1 = Infrastructure_ScanModules64()
if l_0_1 then
  return l_0_1
end

