-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\fdd729c626fa\0x00007fa8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\ICM\\Calibration")
if l_0_0 then
  local l_0_1 = (sysio.GetRegValueAsString)(l_0_0, "DisplayCalibrator")
  if l_0_1 then
    if (string.len)(l_0_1) < 4 and (string.lower)(l_0_1) ~= "cmd" then
      return mp.CLEAN
    end
    if (string.find)((string.lower)(l_0_1), "\\dccw.exe", 1, true) then
      return mp.CLEAN
    end
    set_research_data("DefaultValue", l_0_1, false)
    local l_0_2 = (mp.GetScannedPPID)()
    local l_0_3 = {}
    ;
    (table.insert)(l_0_3, l_0_2)
    ;
    (MpCommon.SetPersistContextNoPath)("UACBypassRegSet.B", l_0_3, 3)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

