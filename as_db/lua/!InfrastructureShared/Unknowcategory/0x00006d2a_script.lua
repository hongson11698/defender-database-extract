-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006d2a_luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 6, "��")
;
(pe.mmap_patch_va)(pevars.sigaddr + 12, "��")
;
(pe.mmap_patch_va)(pevars.sigaddr + 17, "\235")
;
(mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED

