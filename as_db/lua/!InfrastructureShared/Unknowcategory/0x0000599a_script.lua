-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000599a_luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("lua_codepatch_tibs_4")
;
(pe.mmap_patch_va)(pevars.sigaddr + 11, "\000")
return mp.INFECTED

