-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000772c_luac 

-- params : ...
-- function num : 0
if (pe.get_regval)(pe.REG_EAX) == 0 then
  (pe.mmap_patch_va)(pevars.sigaddr + 3, "4\000\000\000")
end
;
(pe.mmap_patch_va)(pevars.sigaddr + (string.find)((pe.mmap_va)(pevars.sigaddr, 64), "\015\133", 1, true) - 1, "������")
return mp.INFECTED

