-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007fa6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)((pe.get_regval)(pe.REG_EBP) - 38, 4)
l_0_0 = (mp.readu_u32)(l_0_0, 1)
l_0_0 = (pe.mmap_va)(l_0_0, 4)
l_0_0 = (mp.readu_u32)(l_0_0, 1)
local l_0_1 = (pe.mmap_va)(pevars.sigaddr + 21, 4)
l_0_1 = (mp.readu_u32)(l_0_1, 1)
l_0_1 = (mp.bitxor)(l_0_1, l_0_0)
;
(pe.mmap_patch_va)(pevars.sigaddr + 19, "\191")
local l_0_2, l_0_3, l_0_4, l_0_5 = (mp.bsplit)(l_0_1, 8)
;
(pe.mmap_patch_va)(pevars.sigaddr + 20, (string.char)(l_0_2))
;
(pe.mmap_patch_va)(pevars.sigaddr + 21, (string.char)(l_0_3))
;
(pe.mmap_patch_va)(pevars.sigaddr + 22, (string.char)(l_0_4))
;
(pe.mmap_patch_va)(pevars.sigaddr + 23, (string.char)(l_0_5))
;
(pe.mmap_patch_va)(pevars.sigaddr + 24, "����")
return mp.INFECTED

