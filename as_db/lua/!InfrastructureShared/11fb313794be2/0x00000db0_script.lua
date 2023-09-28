-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\11fb313794be2\0x00000db0_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 then
      local l_0_1 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
      if l_0_1 == nil then
        return mp.CLEAN
      end
      l_0_1 = (string.lower)(l_0_1)
      if IsKeyInRollingQueue("DllSideloadMonitor", l_0_1, true) then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

