-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Kovter\0x00000e71_luac 

-- params : ...
-- function num : 0
TriggerEMSScan = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (sysio.GetProcessFromFileName)(l_1_0)
  for l_1_5,l_1_6 in pairs(l_1_1) do
    local l_1_7 = (string.format)("pid:%d", l_1_6.pid)
    ;
    (MpDetection.ScanResource)("ems://" .. l_1_7)
  end
end

local l_0_0 = (MpCommon.ExpandEnvironmentVariables)("%windir%")
if l_0_0 then
  TriggerEMSScan(l_0_0 .. "\\regsvr32.exe")
  TriggerEMSScan(l_0_0 .. "\\explorer.exe")
end

