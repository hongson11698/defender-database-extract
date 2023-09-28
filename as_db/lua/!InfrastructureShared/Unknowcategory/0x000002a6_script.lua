-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000002a6_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC23: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1, l_0_2 = (this_sigattrlog[3]).utf8p1
    end
    -- DECOMPILER ERROR at PC24: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil then
      (bm.add_related_file)(l_0_1)
    end
    return mp.INFECTED
  end
end

