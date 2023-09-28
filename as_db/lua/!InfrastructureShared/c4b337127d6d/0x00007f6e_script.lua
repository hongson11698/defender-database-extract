-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\c4b337127d6d\0x00007f6e_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
    local l_0_0, l_0_2, l_0_4, l_0_6, l_0_7 = nil, nil
  end
  do
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 then
      local l_0_1, l_0_3, l_0_5, l_0_8 = , (string.lower)((this_sigattrlog[3]).utf8p2)
    end
    -- DECOMPILER ERROR at PC32: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC41: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC50: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC60: Confused about usage of register: R0 in 'UnsetPending'

    if (string.find)(l_0_3, "foreach", 1, true) and (string.find)(l_0_3, "split", 1, true) and (string.find)(l_0_3, "length -ge", 1, true) then
      local l_0_9, l_0_10 = nil
      if pcall(mp.GetInlineScriptsFromCommandLine, l_0_1:lower()) and mp.GetInlineScriptsFromCommandLine then
        for l_0_14,l_0_15 in ipairs(R5_PC69) do
          local l_0_11, l_0_12 = nil
          -- DECOMPILER ERROR at PC74: Confused about usage of register: R8 in 'UnsetPending'

          if pcall(mp.ContextualExpandEnvironmentVariables, R8_PC74) and mp.ContextualExpandEnvironmentVariables then
            (bm.add_related_file)(R12_PC83)
          end
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

