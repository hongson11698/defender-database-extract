-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007bf5_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (string.lower)((this_sigattrlog[3]).utf8p2)
    else
    end
    -- DECOMPILER ERROR at PC55: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC61: Confused about usage of register: R0 in 'UnsetPending'

    if (not (this_sigattrlog[5]).matched or (string.lower)((this_sigattrlog[5]).utf8p2) ~= nil) and (string.len)((string.lower)((this_sigattrlog[5]).utf8p2)) > 3 and (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "/add", 1, true) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

