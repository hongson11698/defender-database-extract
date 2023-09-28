-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000642b_luac 

-- params : ...
-- function num : 0
(pe.set_regval)(pe.REG_EIP, (pe.get_regval)(pe.REG_EIP) + (string.byte)((pe.mmap_va)(pevars.sigaddr - 1, 1), 1))
return mp.INFECTED

