-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\95b37aa7e8d8\0x00005ef0_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC3: No list found for R0 , SetList fails

-- DECOMPILER ERROR at PC4: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC5: Overwrote pending register: R2 in 'AssignReg'

if ("psexesvc.exe")("psexec.exe", l_0_0) then
  return mp.INFECTED
end
return mp.CLEAN

