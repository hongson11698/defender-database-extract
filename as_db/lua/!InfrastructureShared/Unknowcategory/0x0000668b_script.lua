-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000668b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 6, 1)
;
(pe.set_regval)(pe.REG_EAX, (string.byte)(l_0_0, 1))
;
(pe.mmap_patch_va)(pevars.sigaddr, "êêêê\144")
return mp.INFECTED

