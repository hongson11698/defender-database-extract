-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\51b3976a63d4\0x000001da_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = nil
  end
  -- DECOMPILER ERROR at PC37: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC50: Confused about usage of register: R0 in 'UnsetPending'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (string.lower)((this_sigattrlog[2]).utf8p2) ~= nil) and (StringEndsWith((string.lower)((this_sigattrlog[2]).utf8p2), ".vbs") or StringEndsWith((string.lower)((this_sigattrlog[2]).utf8p2), ".js")) then
      local l_0_6 = nil
      if IsKeyInRollingQueue("CC_filelist", (mp.ContextualExpandEnvironmentVariables)((string.lower)((this_sigattrlog[2]).utf8p2))) and (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)((string.lower)((this_sigattrlog[2]).utf8p2))) then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

