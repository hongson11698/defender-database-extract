-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b1b3c0867ccc\0x00000f58_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_11, l_0_12 = nil
for l_0_4 = 1, mp.SIGATTR_LOG_SZ do
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC6: Confused about usage of register: R4 in 'UnsetPending'

  if (sigattr_tail[R4_PC6]).matched and (sigattr_tail[R4_PC6]).attribute == 16401 then
    l_0_1 = (sigattr_tail[R4_PC6]).utf8p2
    if l_0_1 ~= nil then
      for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1)) do
        local l_0_6 = nil
        -- DECOMPILER ERROR at PC30: Confused about usage of register: R10 in 'UnsetPending'

        R10_PC30 = (mp.ContextualExpandEnvironmentVariables)(R10_PC30)
        if (sysio.IsFileExists)(R10_PC30) then
          (bm.add_related_file)(R10_PC30)
        end
      end
    end
  end
end
add_parents()
TrackPidAndTechniqueBM("BM", "T1490", "impair_recovery")
return mp.INFECTED

