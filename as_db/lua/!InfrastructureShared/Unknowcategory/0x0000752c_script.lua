-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000752c_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).wp1 ~= nil then
      local l_0_4 = nil
      if (string.find)((mp.utf16to8)((this_sigattrlog[3]).wp1), ":\\ \\[%w%s%p]+$") and (string.find)((mp.utf16to8)((this_sigattrlog[3]).wp1), ":\\ \\[^\\]+$") then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

