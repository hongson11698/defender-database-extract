-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000754b_luac 

-- params : ...
-- function num : 0
if pevars.sigaddr ~= pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  return mp.CLEAN
end
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 10, 1)
if (mp.bitand)((string.byte)(l_0_0, 1), 128) == 0 then
  return mp.CLEAN
end
return mp.INFECTED

