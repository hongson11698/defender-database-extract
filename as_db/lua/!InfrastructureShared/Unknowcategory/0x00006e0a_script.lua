-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006e0a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (hstrlog[1]).VA
local l_0_1 = (pe.mmap_va)(l_0_0 + 30, 4)
local l_0_2 = 0
for l_0_6 = 4, 1, -1 do
  l_0_2 = l_0_2 * 256 + (string.byte)(l_0_1, l_0_6)
end
if l_0_2 + 6 + 30 + l_0_0 ~= (hstrlog[2]).VA then
  return mp.LOWFI
end
return mp.CLEAN

