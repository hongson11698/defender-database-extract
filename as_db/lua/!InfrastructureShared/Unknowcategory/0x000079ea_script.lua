-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000079ea_luac 

-- params : ...
-- function num : 0
local l_0_0 = 256 - (string.byte)((pe.mmap_va)(pevars.sigaddr + 2, 1))
;
(pe.mmap_patch_va)((pe.get_regval)(pe.REG_EBP) - l_0_0, "\n\000\000\000")
;
(pe.mmap_patch_va)(pevars.sigaddr + 32, "\255T$\b��")
;
(pe.set_image_filename)("notepad.exe")
;
(pe.reemulate)()
return mp.INFECTED
