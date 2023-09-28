-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb3d3bc49a4\0x00007eda_luac 

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

    bm_AddRelatedFileFromCommandLine(l_0_3, {[".one"] = true}, nil, 1)
    do
      if l_0_6 ~= nil then
        local l_0_7 = nil
        if StringEndsWith(extractDllForRegproc(l_0_6), ".dll") then
          return mp.CLEAN
        end
        if extractDllForRegproc(l_0_6) and checkFileLastWriteTime(extractDllForRegproc(l_0_6), 600) == false and (mp.IsKnownFriendlyFile)(extractDllForRegproc(l_0_6), true, false) == false then
          (bm.add_related_file)(extractDllForRegproc(l_0_6))
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
  end
end

