-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000730b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (hstrlog[2]).VA + 45
local l_0_1 = (pe.mmap_va)(l_0_0, 4)
local l_0_2 = (mp.readu_u32)(l_0_1, 1)
local l_0_3 = (pe.mmap_va)(l_0_2, 16)
if (string.sub)(l_0_3, 1, 8) == "IExplore" then
  return mp.INFECTED
end
return mp.CLEAN

