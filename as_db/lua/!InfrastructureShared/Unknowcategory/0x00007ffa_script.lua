-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ffa_luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("lua_codepatch_tibs_22")
local l_0_0 = (pe.mmap_va)((pe.get_regval)(pe.REG_EBP) - 4, 4)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
l_0_0 = (pe.mmap_va)(pevars.sigaddr, 52)
local l_0_2 = (mp.readu_u32)(l_0_0, 6)
local l_0_3 = (string.byte)(l_0_0, 14)
local l_0_4 = (string.byte)(l_0_0, 17)
local l_0_5 = (string.byte)(l_0_0, 20)
local l_0_6 = (mp.readu_u32)(l_0_0, 22)
local l_0_7 = (string.byte)(l_0_0, 28)
local l_0_8 = (mp.readu_u32)(l_0_0, 32)
local l_0_9 = (mp.readu_u32)(l_0_0, 43)
local l_0_10 = (pe.get_regval)(pe.REG_EDX)
local l_0_11 = (mp.ror32)((mp.ror32)((mp.ror32)(l_0_10, l_0_3) - l_0_4, l_0_5) + l_0_6, l_0_7) - (mp.bitxor)(l_0_9, l_0_8) + l_0_1 - l_0_2
;
(pe.set_regval)(pe.REG_EBX, l_0_11)
return mp.INFECTED

