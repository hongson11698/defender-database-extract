-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ab1_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[2]).matched then
  local l_0_0, l_0_1, l_0_2 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0 ~= nil and (string.len)(l_0_0) > 3 then
      local l_0_3 = nil
      if (mp.GetExecutablesFromCommandLine)(l_0_0) ~= nil then
        for l_0_7,l_0_8 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0)) do
          local l_0_4 = nil
          -- DECOMPILER ERROR at PC32: Confused about usage of register: R6 in 'UnsetPending'

          R6_PC32 = (mp.ContextualExpandEnvironmentVariables)(R6_PC32)
          ;
          (bm.add_related_file)(R6_PC32)
        end
      end
      do
        do
          do return mp.INFECTED end
          return mp.CLEAN
        end
      end
    end
  end
end

