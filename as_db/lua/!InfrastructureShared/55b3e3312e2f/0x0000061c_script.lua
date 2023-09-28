-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\55b3e3312e2f\0x0000061c_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7 = (this_sigattrlog[2]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC58: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC65: Confused about usage of register: R0 in 'UnsetPending'

    if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 == nil or (this_sigattrlog[4]).utf8p2) and isTainted((this_sigattrlog[4]).utf8p2, "remote_file_created_taint") then
      (bm.add_related_file)((this_sigattrlog[4]).utf8p2)
      -- DECOMPILER ERROR at PC68: Confused about usage of register: R0 in 'UnsetPending'

      taint((this_sigattrlog[4]).utf8p2, "remote_file_chmodexec", 3600)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

