-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000013e9_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1 = nil, nil
  end
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
      local l_0_2 = nil
    end
    -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

    if (string.find)(l_0_2, "echo 1", 1, true) and (string.find)((this_sigattrlog[2]).utf8p1, "/proc/sys/net/ip", 1, true) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end
