-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000998_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  else
  end
  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

  if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p2 ~= nil) and (this_sigattrlog[3]).utf8p2 ~= "" then
    local l_0_5 = nil
    if (mp.GetExecutablesFromCommandLine)((this_sigattrlog[3]).utf8p2) ~= nil then
      for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[3]).utf8p2)) do
        local l_0_6 = nil
        -- DECOMPILER ERROR at PC33: Confused about usage of register: R6 in 'UnsetPending'

        R6_PC33 = (mp.ContextualExpandEnvironmentVariables)(R6_PC33)
        ;
        (bm.add_related_file)(R6_PC33)
      end
    end
  end
  do
    return mp.INFECTED
  end
end

