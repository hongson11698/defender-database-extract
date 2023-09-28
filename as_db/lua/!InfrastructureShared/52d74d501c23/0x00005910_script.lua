-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\52d74d501c23\0x00005910_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC2: No list found for R0 , SetList fails

-- DECOMPILER ERROR at PC3: Overwrote pending register: R1 in 'AssignReg'

if ("sqlservr.exe")("cmdhstr", l_0_0) then
  return mp.INFECTED
end
return mp.CLEAN

