-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006505_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 32)
local l_0_1 = (string.sub)(l_0_0, 21, 21)
;
(pe.mmap_patch_va)(pevars.sigaddr + 18, "\187" .. l_0_1 .. "\000\000\000��\144")
return mp.INFECTED
