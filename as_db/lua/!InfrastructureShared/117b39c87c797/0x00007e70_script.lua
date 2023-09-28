-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\117b39c87c797\0x00007e70_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil, nil
  end
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
      local l_0_2 = nil
    end
    -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_3, l_0_4 = , (this_sigattrlog[2]).utf8p2
    if pcall(mp.GetInlineScriptsFromCommandLine, l_0_2:lower()) and mp.GetInlineScriptsFromCommandLine then
      for l_0_8,l_0_9 in ipairs(R5_PC38) do
        local l_0_5, l_0_6 = nil
        -- DECOMPILER ERROR at PC43: Confused about usage of register: R8 in 'UnsetPending'

        if pcall(mp.ContextualExpandEnvironmentVariables, R8_PC43) and mp.ContextualExpandEnvironmentVariables then
          (bm.add_related_file)(R12_PC52)
        end
      end
    end
    do
      local l_0_12, l_0_13 = nil
      if pcall(mp.GetInlineScriptsFromCommandLine, l_0_4:lower()) and mp.GetInlineScriptsFromCommandLine then
        for l_0_17,l_0_18 in ipairs(R7_PC67) do
          local l_0_14, l_0_15 = nil
          -- DECOMPILER ERROR at PC71: Overwrote pending register: R12 in 'AssignReg'

          if pcall(R12_PC52, R13_PC73) and R12_PC52 then
            R13_PC73 = bm
            R13_PC73 = R13_PC73.add_related_file
            R13_PC73(R14_PC81)
          end
        end
      end
      do
        return mp.INFECTED
      end
    end
  end
end

