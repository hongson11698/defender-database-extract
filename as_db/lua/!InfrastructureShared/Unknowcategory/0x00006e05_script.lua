-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006e05_luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 9, "��")
local l_0_0 = 160
local l_0_1 = (pe.mmap_va)(pevars.sigaddr, l_0_0)
local l_0_2 = (string.find)(l_0_1, "P\232....=....u", 1, true)
;
(pe.mmap_patch_va)(pevars.sigaddr + l_0_2 + 10, "\235")
return mp.INFECTED

