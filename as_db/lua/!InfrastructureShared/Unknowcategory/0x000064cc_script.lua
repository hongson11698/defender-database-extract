-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000064cc_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 32)
local l_0_1 = (string.sub)(l_0_0, 12, 12)
;
(pe.mmap_patch_va)(pevars.sigaddr + 9, "\187" .. l_0_1 .. "\000\000\000")
return mp.INFECTED

