-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Alureon\0x00000bbc_luac 

-- params : ...
-- function num : 0
if (Trigger.InjectedModuleScan64)() then
  (Trigger.TriggerKernelScan)("InjectedModuleScan64")
else
  if AlureonDeviceTrigger() then
    (Trigger.TriggerKernelScan)("AlureonDeviceTrigger-64")
  end
end

