-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007963_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
    if l_0_0 ~= nil and (string.len)(l_0_0) > 3 and (string.find)(l_0_0, " for ", 1, true) and (string.find)(l_0_0, " in ", 1, true) and (string.find)(l_0_0, " do ", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

