-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Alureon\0x00000f8d_luac 

-- params : ...
-- function num : 0
AlureonGuidTrigger = function()
  -- function num : 0_0
  local l_1_0 = (sysio.RegOpenKey)("HKLM\\Software\\microsoft\\cryptography")
  if not l_1_0 then
    return false
  end
  local l_1_1 = (sysio.GetRegValueAsString)(l_1_0, "MachineGUID")
  do
    if l_1_1 then
      local l_1_2 = (sysio.FindObjectInDir)("\\", l_1_1)
      if l_1_2 and l_1_2.Type == "Event" then
        return true
      end
    end
    return false
  end
end

if (Trigger.AlureonA2G)() then
  (Trigger.TriggerKernelScan)("AlureonA2G")
else
  if (Trigger.InjectedModuleScan32)() then
    (Trigger.TriggerKernelScan)("InjectedModuleScan32")
  else
    if AlureonGuidTrigger() then
      (Trigger.TriggerKernelScan)("AlureonGuidTrigger")
    else
      if AlureonDeviceTrigger() then
        (Trigger.TriggerKernelScan)("AlureonDeviceTrigger-32")
      end
    end
  end
end

