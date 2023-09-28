-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006299_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.find)((pe.mmap_va)(pevars.sigaddr, 64), "u", 21, true)
;
(pe.mmap_patch_va)(pevars.sigaddr + l_0_0, "3\255")
return mp.INFECTED

