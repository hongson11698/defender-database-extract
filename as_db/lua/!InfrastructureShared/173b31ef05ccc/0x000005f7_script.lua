-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\173b31ef05ccc\0x000005f7_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p1 ~= nil then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (this_sigattrlog[2]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC59: Confused about usage of register: R0 in 'UnsetPending'

    if not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p1 == nil or (this_sigattrlog[4]).utf8p1 then
      (bm.add_related_file)((this_sigattrlog[4]).utf8p1)
    end
    return mp.INFECTED
  end
end

