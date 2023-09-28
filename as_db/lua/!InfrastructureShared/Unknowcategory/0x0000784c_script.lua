-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000784c_luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 12, "")
;
(pe.mmap_patch_va)((mp.bitand)((pe.get_regval)(pe.REG_EBP) + (mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 32, 4), 1), 4294967295), "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
return mp.INFECTED

