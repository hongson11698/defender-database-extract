-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007978_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_regval)(pe.REG_EBP)
local l_0_1 = (pe.mmap_va)(pevars.sigaddr, 8)
local l_0_2 = (mp.readu_u32)(l_0_1, 3)
l_0_1 = (pe.mmap_va)((mp.bitand)(l_0_0 + l_0_2, 4294967295), 4)
local l_0_3 = (mp.readu_u32)(l_0_1, 1) + 1
l_0_1 = (pe.mmap_va)(l_0_3, 4)
if (mp.readu_u32)(l_0_1, 1) == 707406378 then
  return mp.SUSPICIOUS
end
return mp.CLEAN

