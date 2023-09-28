-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000753_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (this_sigattrlog[5]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

    if not (this_sigattrlog[7]).matched or (this_sigattrlog[7]).utf8p1 ~= nil then
      local l_0_5 = nil
      local l_0_6 = (string.sub)((this_sigattrlog[7]).utf8p1, -4)
      if (string.find)("|.asp|aspx|ashx|asmx|", l_0_6, 1, true) == nil then
        return mp.CLEAN
      end
    end
    do
      return mp.INFECTED
    end
  end
end

