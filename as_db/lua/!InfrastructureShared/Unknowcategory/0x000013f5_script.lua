-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000013f5_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).wp2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).wp2 ~= nil then
      local l_0_1 = (this_sigattrlog[2]).utf8p2
    end
    -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

    if (string.match)(l_0_1, "%d+%.%d+%.%d+%.%d+") then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

