-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2db34ef29902\0x000005f3_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 and isTainted(l_0_0, "remote_file_created_taint") then
    (bm.add_related_file)(l_0_0)
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

    taint(l_0_0, "remote_file_chmodexec", 3600)
    return mp.INFECTED
  end
  return mp.CLEAN
end

