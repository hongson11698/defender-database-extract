-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007abf_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R1 in 'AssignReg'

local l_0_1 = nil
local l_0_0 = nil
-- DECOMPILER ERROR at PC28: Overwrote pending register: R2 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_2, l_0_3 = nil
  end
  if not (this_sigattrlog[3]).matched or l_0_0 == nil then
    return mp.CLEAN
  end
  if l_0_0 == "" then
    return mp.CLEAN
  end
  if l_0_0 == l_0_1 and l_0_0 == (string.match)((this_sigattrlog[3]).utf8p1, "\\(%l+)%.exe") then
    return mp.INFECTED
  end
  return mp.CLEAN
end

