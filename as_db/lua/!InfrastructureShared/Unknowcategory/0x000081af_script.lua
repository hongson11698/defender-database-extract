-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000081af_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (hstrlog[1]).matched then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC23: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (hstrlog[2]).matched or (hstrlog[3]).matched then
      local l_0_1 = (hstrlog[2]).VA
    end
    -- DECOMPILER ERROR at PC39: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (hstrlog[4]).matched or (hstrlog[5]).matched then
        local l_0_2, l_0_3, l_0_4, l_0_5 = (hstrlog[4]).VA
      end
      -- DECOMPILER ERROR at PC40: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

      if l_0_2 == 2138046464 or l_0_2 == 2146697216 then
        (mp.readprotection)(false)
        -- DECOMPILER ERROR at PC50: Confused about usage of register: R0 in 'UnsetPending'

        local l_0_6 = nil
        local l_0_7, l_0_8, l_0_9, l_0_10, l_0_11, l_0_12, l_0_13, l_0_14, l_0_15 = ((pe.mmap_va)(l_0_2, 512)), nil, nil, nil, nil, nil, nil, nil, nil
        local l_0_16, l_0_17 = nil, (string.gsub)(l_0_7, "��", "")
        l_0_17 = (string.gsub)(l_0_17, "��", "")
        l_0_17 = (string.gsub)(l_0_17, "��", "")
        l_0_17 = (string.gsub)(l_0_17, "\135\255", "")
        l_0_17 = (string.gsub)(l_0_17, "��", "")
        l_0_17 = (string.gsub)(l_0_17, "QY", "")
        l_0_17 = (string.gsub)(l_0_17, "��", "")
        l_0_17 = (string.gsub)(l_0_17, "��+", "")
        l_0_17 = (string.gsub)(l_0_17, "��", "")
        l_0_17 = (string.gsub)(l_0_17, "V^", "")
        local l_0_18 = nil
        if (hstrlog[4]).matched then
          local l_0_19 = 0
          repeat
            -- DECOMPILER ERROR at PC145: Overwrote pending register: R14 in 'AssignReg'

            l_0_19 = l_0_19 + 0
            -- DECOMPILER ERROR at PC148: Confused about usage of register: R14 in 'UnsetPending'

          until 0 == 0
        end
        l_0_19 = l_0_19 + l_0_18 + l_0_8 + l_0_9 + l_0_10 + l_0_11 + l_0_12 + l_0_13 + l_0_16 + l_0_14 + l_0_15
        if l_0_19 < 65 then
          return mp.CLEAN
        end
        local l_0_20 = "!decrypted" .. l_0_17
        ;
        (mp.vfo_add_buffer)(l_0_20, "[Obfuscator.ZV]", mp.ADD_VFO_PEPACKED)
        return mp.LOWFI
      end
      do
        return mp.CLEAN
      end
    end
  end
end

