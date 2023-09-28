-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000074ac_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC9: Overwrote pending register: R0 in 'AssignReg'

local l_0_0 = nil
-- DECOMPILER ERROR at PC19: Overwrote pending register: R1 in 'AssignReg'

local l_0_1 = nil
if l_0_0 ~= nil and l_0_1 ~= nil and l_0_0 == l_0_1 then
  if (string.find)(l_0_0, "c:\\windows\\system32\\", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

