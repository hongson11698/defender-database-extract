-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c32_luac 

-- params : ...
-- function num : 0
if pevars.sigaddr == pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  local l_0_0 = (pe.get_api_id)((mp.readu_u32)((pe.mmap_va)((mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 18, 4), 1), 4), 1))
  local l_0_1 = (pe.get_api_id)((mp.readu_u32)((pe.mmap_va)((mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 34, 4), 1), 4), 1))
  if l_0_0 == 1467596470 and (l_0_1 == 3909456120 or l_0_1 == 4231370131) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

