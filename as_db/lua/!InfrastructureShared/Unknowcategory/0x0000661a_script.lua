-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000661a_luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 1, 4), 1) < 1048576 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 12, "")
return mp.INFECTED

