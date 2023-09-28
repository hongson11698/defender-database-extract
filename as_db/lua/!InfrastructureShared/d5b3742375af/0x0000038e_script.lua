-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d5b3742375af\0x0000038e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.ppid == nil or l_0_0.command_line == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(l_0_0.command_line)
local l_0_2 = l_0_0.ppid
if l_0_1 ~= nil and l_0_2 ~= nil then
  if IsPidExcluded(l_0_2) then
    return mp.CLEAN
  end
  if StringStartsWith(l_0_1, "%") then
    return mp.CLEAN
  end
  local l_0_3 = (mp.GetExecutablesFromCommandLine)(l_0_1)
  if l_0_3 == nil then
    return mp.CLEAN
  end
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    l_0_8 = (mp.ContextualExpandEnvironmentVariables)(l_0_8)
    if l_0_8 ~= nil then
      local l_0_9 = (string.lower)(l_0_8)
      local l_0_10, l_0_11 = pcall(MpCommon.QueryPersistContext, l_0_9, "SuspFileDroppedBySystemProcess")
      if l_0_10 ~= nil and l_0_11 then
        (bm.trigger_sig)("T1570", "exec_remotedroppedscript_a", l_0_2)
        return mp.INFECTED
      end
      if IsKeyInRollingQueue("DroppedByPossibleRemotelyCreatedProc", l_0_9, true) then
        (bm.trigger_sig)("T1570", "exec_remotedroppedscript_b", l_0_2)
        return mp.INFECTED
      end
    end
  end
end
do
  l_0_3 = mp
  l_0_3 = l_0_3.CLEAN
  return l_0_3
end

