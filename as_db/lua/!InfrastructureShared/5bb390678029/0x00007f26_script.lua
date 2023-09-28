-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb390678029\0x00007f26_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0, l_0_2, l_0_4 = nil, nil
  end
  do
    if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
      local l_0_1, l_0_3, l_0_5 = , (this_sigattrlog[1]).utf8p2
    end
    local l_0_6 = nil
    -- DECOMPILER ERROR at PC29: Confused about usage of register: R1 in 'UnsetPending'

    bm_AddRelatedFileFromCommandLine(l_0_3, {[".one"] = true}, nil, 6)
    if l_0_6 ~= nil then
      local l_0_7 = nil
      for l_0_11,l_0_12 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_6)) do
        local l_0_8, l_0_9 = nil
        -- DECOMPILER ERROR at PC46: Confused about usage of register: R8 in 'UnsetPending'

        R8_PC46 = (mp.ContextualExpandEnvironmentVariables)(R8_PC46)
        if (sysio.IsFileExists)(R8_PC46) and checkFileLastWriteTime(R8_PC46, 600) == false then
          (bm.add_threat_file)(R8_PC46)
          return mp.INFECTED
        end
      end
    end
    do
      return mp.CLEAN
    end
  end
end

