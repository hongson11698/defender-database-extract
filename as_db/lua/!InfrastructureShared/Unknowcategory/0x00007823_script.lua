-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007823_luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 1, 4), 1) ~= pevars.sigaddr + 6 or (mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 1 + 6, 4), 1) ~= pevars.sigaddr + 12 or (mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 1 + 12, 4), 1) ~= pevars.sigaddr + 18 then
  return mp.CLEAN
end
return mp.INFECTED

