-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007516_luac 

-- params : ...
-- function num : 0
if (mp.readu_u16)((pe.mmap_va)(pevars.sigaddr - 2, 2), 1) ~= 55295 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + (string.find)((pe.mmap_va)(pevars.sigaddr, 32), "�t", 1, true), "\235")
return mp.INFECTED

