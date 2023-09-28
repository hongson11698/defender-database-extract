-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb39d054fee\0x00006275_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC4: No list found for R0 , SetList fails

local l_0_1 = {}
-- DECOMPILER ERROR at PC8: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC9: Overwrote pending register: R3 in 'AssignReg'

if ("EMAILCLIENT")("WMI", l_0_1) then
  return mp.INFECTED
end
return mp.CLEAN

