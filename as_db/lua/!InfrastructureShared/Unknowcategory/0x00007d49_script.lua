-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d49_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC52: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1, l_0_2, l_0_3 = (string.lower)((this_sigattrlog[2]).utf8p2)
    end
    -- DECOMPILER ERROR at PC55: Confused about usage of register: R0 in 'UnsetPending'

    if (string.find)(l_0_1, "iexplore", 1, true) then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC67: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC76: Confused about usage of register: R0 in 'UnsetPending'

    if (string.find)(l_0_1, " iex", 1, true) or (string.find)(l_0_1, "iex ", 1, true) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

