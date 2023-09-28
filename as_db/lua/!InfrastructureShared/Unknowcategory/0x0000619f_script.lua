-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000619f_luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 20, "êê")
;
(pe.mmap_patch_va)(pevars.sigaddr + 40, ")\203")
;
(pe.mmap_patch_va)(pevars.sigaddr + 23, "\000")
return mp.INFECTED

