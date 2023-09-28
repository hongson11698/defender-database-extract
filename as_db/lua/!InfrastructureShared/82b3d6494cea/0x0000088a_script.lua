-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\82b3d6494cea\0x0000088a_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  if l_0_6.image_path ~= nil and l_0_6.ppid ~= nil and not (MpCommon.IsFriendlyProcess)(l_0_6.ppid) then
    local l_0_7 = 1
    local l_0_8 = (mp.bitand)(l_0_6.reason_ex, l_0_7)
    if l_0_8 == l_0_7 then
      local l_0_9 = l_0_6.image_path
      local l_0_10 = l_0_6.ppid
      do
        local l_0_11, l_0_12 = l_0_6.cmd_line or ""
        -- DECOMPILER ERROR at PC37: Confused about usage of register: R11 in 'UnsetPending'

        local l_0_13 = nil
        local l_0_14 = (MpCommon.Base64Encode)(l_0_9 .. "|" .. l_0_11) .. ";" .. l_0_10
        do
          local l_0_15 = "RemoteInvocation:WMI|" .. (MpCommon.Base64Encode)(l_0_9)
          AppendToRollingQueue(l_0_15, l_0_10, safeJsonSerialize(reportSessionInformationInclusive()), 3600, 100, 1)
          recursiveTriggerSig("RemoteInvocation:WMI", l_0_14, l_0_10, 0)
          -- DECOMPILER ERROR at PC67: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC67: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC67: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC67: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC67: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
reportRelevantUntrustedEntities()
reportTimingData()
pcall(bm.ignore_process_start_limits)
return mp.CLEAN

