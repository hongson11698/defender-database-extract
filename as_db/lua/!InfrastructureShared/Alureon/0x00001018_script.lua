-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Alureon\0x00001018_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((Kernel.GetDiskDevicePathAsString)())
local l_0_1 = nil
if l_0_0 then
  for l_0_5,l_0_6 in pairs((Kernel.GetDeviceList)()) do
    if (string.lower)(l_0_6.ObjectPath) == (string.lower)(l_0_0) then
      local l_0_7 = (l_0_6.ParseDeviceChain)()
      for l_0_11 in pairs(l_0_7) do
        do
          do
            local l_0_12 = (l_0_11.GetDriverObject)()
            l_0_1 = (Kernel.RkPattScan)((l_0_12.GetIrpAddress)("IRP_MJ_CREATE"))
            if l_0_1 then
              break
            end
            l_0_1 = (Kernel.RkPattScan)((l_0_12.GetIrpAddress)("IRP_MJ_INTERNAL_DEVICE_CONTROL"))
            if l_0_1 then
              break
            end
            -- DECOMPILER ERROR at PC50: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
    end
  end
end
if l_0_1 then
  if (string.find)(l_0_1.DetectionName, "/Alureon", 1, true) then
    if (string.find)(l_0_1.DetectionName, ".gen", 1, true) then
      l_0_1.DetectionInfo = "Mbr::Alureon"
    else
      ;
      (Detection.ReportUnknown)("Bad64BitDetection")
    end
  else
    l_0_1 = nil
  end
  if l_0_1 then
    do return l_0_1 end
    -- DECOMPILER ERROR at PC85: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

