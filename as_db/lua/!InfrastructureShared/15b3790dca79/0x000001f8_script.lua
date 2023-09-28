-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\15b3790dca79\0x000001f8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if not l_0_0 then
  return mp.CLEAN
end
do
  local l_0_1, l_0_2 = (bm.get_imagepath)() or "NO_IMG_PATH"
  local l_0_3 = nil
  do
    local l_0_4, l_0_5 = l_0_0.ppid, l_0_0.cmd_line or "NO_CMD_LINE"
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R3 in 'UnsetPending'

    -- DECOMPILER ERROR at PC27: Confused about usage of register: R2 in 'UnsetPending'

    local l_0_6 = nil
    local l_0_7 = nil
    local l_0_8 = (MpCommon.Base64Encode)(l_0_3 .. "|" .. l_0_5) .. ";" .. l_0_4
    AppendToRollingQueue("RemoteInvocation:WINRM|" .. (MpCommon.Base64Encode)(l_0_3), l_0_6, safeJsonSerialize(reportSessionInformationInclusive()), 3600, 100, 1)
    recursiveTriggerSig("RemoteInvocation:WINRM", l_0_8, l_0_6, 0)
    reportRelevantUntrustedEntities()
    reportTimingData()
    pcall(bm.ignore_process_start_limits)
    return mp.INFECTED
  end
end

