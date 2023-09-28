-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000020b_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[17]).matched then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_2 = nil
    local l_0_3 = (string.sub)(l_0_0, -4)
    if (string.find)("|.asp|aspx|ashx|asmx|", l_0_3, 1, true) then
      (mp.ReportLowfi)(l_0_2, 3394984378)
      ;
      (bm.add_related_file)(l_0_2)
      return mp.INFECTED
    end
  end
  do
    return mp.CLEAN
  end
end

