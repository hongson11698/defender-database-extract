-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007bc4_luac 

-- params : ...
-- function num : 0
if pevars.sigaddr == pehdr.ImageBase + pehdr.AddressOfEntryPoint and (pe.get_api_id)((mp.readu_u32)((pe.mmap_va)((mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 18, 4), 1), 4), 1)) == 1467596470 and (pe.get_api_id)((mp.readu_u32)((pe.mmap_va)((mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 24, 4), 1), 4), 1)) == 3909456120 then
  return mp.INFECTED
end
return mp.CLEAN

