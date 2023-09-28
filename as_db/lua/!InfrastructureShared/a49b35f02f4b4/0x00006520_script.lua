-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a49b35f02f4b4\0x00006520_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
local l_0_1 = {}
-- DECOMPILER ERROR at PC9: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC10: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC11: Overwrote pending register: R3 in 'AssignReg'

if ("program files")("windows", l_0_1) then
  return mp.INFECTED
end
return mp.CLEAN

