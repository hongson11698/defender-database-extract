-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\97241be7e7aeb\0x00007538_luac 

-- params : ...
-- function num : 0
local l_0_0 = reportHeaders
local l_0_1 = {}
-- DECOMPILER ERROR at PC4: No list found for R1 , SetList fails

l_0_0(l_0_1)
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

-- DECOMPILER ERROR at PC10: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC11: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC12: Overwrote pending register: R3 in 'AssignReg'

l_0_1 = l_0_1("Host", "User-Agent")
if l_0_1 == 252 then
  l_0_1 = string
  l_0_1 = l_0_1.byte
  l_0_1 = l_0_1(l_0_0, 2)
  if l_0_1 ~= 232 then
    l_0_1 = string
    l_0_1 = l_0_1.byte
    l_0_1 = l_0_1(l_0_0, 2)
  end
  if l_0_1 == 72 then
    l_0_1 = mp
    l_0_1 = l_0_1.INFECTED
    return l_0_1
  end
end
l_0_1 = mp
l_0_1 = l_0_1.CLEAN
return l_0_1

