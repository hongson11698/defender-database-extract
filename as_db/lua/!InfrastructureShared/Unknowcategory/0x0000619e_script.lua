-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000619e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 80)
local l_0_1 = (mp.readu_u32)(l_0_0, 31) - 1
;
(pe.set_regval)(pe.REG_ECX, l_0_1)
return mp.CLEAN

