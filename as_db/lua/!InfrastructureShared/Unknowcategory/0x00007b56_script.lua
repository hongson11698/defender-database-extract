-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b56_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC3: Overwrote pending register: R0 in 'AssignReg'

local l_0_0 = nil
if l_0_0 == nil then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC14: Overwrote pending register: R1 in 'AssignReg'

local l_0_1 = nil
if l_0_1 == nil then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC24: Overwrote pending register: R2 in 'AssignReg'

local l_0_2 = nil
if l_0_2 ~= nil and ((string.find)(l_0_2, "wget", 1, true) or (string.find)(l_0_2, "powershell", 1, true) or (string.find)(l_0_2, "python", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN

