-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000003b4_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  else
  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC44: Confused about usage of register: R0 in 'UnsetPending'

  if (not (this_sigattrlog[3]).matched or (string.lower)((this_sigattrlog[3]).utf8p2) ~= nil) and (string.len)((string.lower)((this_sigattrlog[3]).utf8p2)) > 3 and (string.find)((string.lower)((this_sigattrlog[3]).utf8p2), "transfer", 1, true) and (string.find)((string.lower)((this_sigattrlog[3]).utf8p2), "bitsadmin", 1, true) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

