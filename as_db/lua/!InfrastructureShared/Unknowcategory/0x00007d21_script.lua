-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d21_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  end
  -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_4 = nil
    for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[2]).utf8p2)) do
      local l_0_5 = nil
      -- DECOMPILER ERROR at PC38: Confused about usage of register: R6 in 'UnsetPending'

      R6_PC38 = (mp.ContextualExpandEnvironmentVariables)(R6_PC38)
      if (sysio.IsFileExists)(R6_PC38) and (string.sub)(R6_PC38, -4) == ".jar" then
        (bm.add_threat_file)(R6_PC38)
      end
    end
  end
  do
    return mp.INFECTED
  end
end

