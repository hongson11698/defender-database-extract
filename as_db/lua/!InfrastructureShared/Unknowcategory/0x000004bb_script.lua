-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000004bb_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0)
    local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
    for l_0_6,l_0_7 in ipairs(l_0_2) do
      l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
      if (sysio.IsFileExists)(l_0_7) then
        (bm.add_related_file)(l_0_7)
      end
    end
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

