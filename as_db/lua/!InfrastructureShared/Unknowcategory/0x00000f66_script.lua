-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000f66_luac 

-- params : ...
-- function num : 0
ScanStorageDeviceStack = function()
  -- function num : 0_0
  local l_1_0 = (Kernel.GetDiskDevicePathAsString)()
  if l_1_0 == nil then
    return nil
  end
  l_1_0 = (string.lower)(l_1_0)
  local l_1_1 = nil
  if l_1_0 then
    for l_1_5,l_1_6 in pairs((Kernel.GetDeviceList)()) do
      if (string.lower)(l_1_6.ObjectPath) == l_1_0 then
        local l_1_7 = (l_1_6.ParseDeviceChain)()
        for l_1_11 in pairs(l_1_7) do
          local l_1_12 = (l_1_11.GetDriverObject)()
          local l_1_13 = (l_1_12.GetIrpAddress)("IRP_MJ_INTERNAL_DEVICE_CONTROL")
          if l_1_13 == nil then
            return nil
          end
          l_1_1 = (Kernel.RkPattScan)(l_1_13)
          if l_1_1 and (string.find)(l_1_1.DetectionName, "/Pitou", 1, true) then
            return l_1_1
          else
            l_1_1 = nil
          end
        end
      end
    end
  end
  do
    do return nil end
    -- DECOMPILER ERROR at PC67: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end


