-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\98b3a19be4c1\0x00007ea5_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    local l_0_0, l_0_2, l_0_4, l_0_5, l_0_6, l_0_7, l_0_9 = nil, nil
  end
  do
    if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
      local l_0_1, l_0_3, l_0_8, l_0_10 = , (this_sigattrlog[1]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

    if ((this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil and (this_sigattrlog[2]).utf8p2 == nil) or l_0_1 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC50: Confused about usage of register: R0 in 'UnsetPending'

    do
      if l_0_1 ~= nil then
        local l_0_11 = nil
        -- DECOMPILER ERROR at PC55: Confused about usage of register: R1 in 'UnsetPending'

        if extractDllForRegproc(l_0_1) then
          if contains((this_sigattrlog[2]).utf8p2, extractDllForRegproc(l_0_1)) then
            return mp.CLEAN
          end
          if checkFileLastWriteTime(extractDllForRegproc(l_0_1), 600) == false and (mp.IsKnownFriendlyFile)(extractDllForRegproc(l_0_1), true, false) == false then
            (bm.add_related_file)(extractDllForRegproc(l_0_1))
            return mp.INFECTED
          end
        end
      end
      return mp.CLEAN
    end
  end
end

