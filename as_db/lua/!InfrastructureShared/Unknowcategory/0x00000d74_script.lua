-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d74_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_0, l_0_2, l_0_3, l_0_4 = nil, nil
  end
  do
    if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC30: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC48: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil and (this_sigattrlog[5]).utf8p1 ~= nil and (l_0_1 == (this_sigattrlog[5]).utf8p1 or (string.match)(l_0_1, "^127.") or (string.match)(l_0_1, "^::1*") or (string.match)(l_0_1, "^0.0.0.0")) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end

