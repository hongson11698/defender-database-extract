-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c07_luac 

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
      local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = (string.lower)((this_sigattrlog[3]).utf8p1)
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC51: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil and (string.find)(l_0_1, "\\wwwroot\\", 1, true) then
      (mp.ReportLowfi)(l_0_1, 3277719387)
      -- DECOMPILER ERROR at PC56: Confused about usage of register: R0 in 'UnsetPending'

      ;
      (bm.add_related_file)(l_0_1)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

