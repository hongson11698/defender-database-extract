-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2db3479f4861\0x000001f5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if not l_0_0 then
  return mp.CLEAN
end
if not (this_sigattrlog[2]).matched or not (this_sigattrlog[2]).ppid then
  return mp.CLEAN
end
do
  local l_0_1, l_0_3 = (this_sigattrlog[2]).utf8p2 or ""
  do
    local l_0_2, l_0_4 = , (bm.get_imagepath)() or "NO_IMG_PATH"
    local l_0_5 = nil
    do
      local l_0_6, l_0_7 = , l_0_0.ppid
      -- DECOMPILER ERROR at PC40: Confused about usage of register: R2 in 'UnsetPending'

      -- DECOMPILER ERROR at PC48: Confused about usage of register: R3 in 'UnsetPending'

      local l_0_8 = nil
      local l_0_9 = nil
      local l_0_10 = nil
      AppendToRollingQueue("RemoteInvocation:DCOM.MMC20|" .. (MpCommon.Base64Encode)(l_0_8), l_0_9, safeJsonSerialize(reportSessionInformationInclusive()), 3600, 100, 1)
      recursiveTriggerSig("RemoteInvocation:DCOM.MMC20", (MpCommon.Base64Encode)(l_0_6 .. "|" .. (l_0_0.cmd_line or "NO_CMD_LINE")) .. ";" .. l_0_5 .. ";" .. l_0_7, l_0_9, 0)
      reportRelevantUntrustedEntities()
      reportTimingData()
      pcall(bm.ignore_process_start_limits)
      return mp.INFECTED
    end
  end
end

