-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a2b39ef24313\0x0000148b_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched then
    local l_0_0, l_0_2, l_0_4, l_0_6, l_0_8, l_0_10, l_0_12, l_0_13, l_0_14, l_0_15 = nil, nil
  end
  do
    if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).wp2 ~= nil then
      local l_0_1, l_0_3, l_0_5, l_0_7, l_0_9, l_0_11 = , (this_sigattrlog[4]).utf8p2
    end
    -- DECOMPILER ERROR at PC21: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC25: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC34: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC43: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC52: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC61: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC70: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC78: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_3 ~= nil and ((string.find)(l_0_3, "-iname", 1, true) or (string.find)(l_0_3, "-name", 1, true) or (string.find)(l_0_3, "-iregex", 1, true) or (string.find)(l_0_3, "-regex", 1, true)) and ((string.find)(l_0_3, "/root/", 1, true) or (string.find)(l_0_3, "/home/ ", 1, true)) then
      if isTainted(l_0_1, "remote_file_created_taint") then
        return mp.INFECTED
      end
      -- DECOMPILER ERROR at PC88: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC96: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC104: Confused about usage of register: R0 in 'UnsetPending'

      if (string.sub)(l_0_1, 0, 5) == "/tmp/" or (string.sub)(l_0_1, 0, 9) == "/var/tmp/" or (string.sub)(l_0_1, 0, 9) == "/dev/shm/" then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

