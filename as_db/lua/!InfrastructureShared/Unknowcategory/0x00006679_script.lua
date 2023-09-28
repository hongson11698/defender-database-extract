-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006679_luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 2, 4), 1) >= 65536 then
  (pe.mmap_patch_va)(pevars.sigaddr + 6, "\235")
  return mp.INFECTED
end
return mp.CLEAN

