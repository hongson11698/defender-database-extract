-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5478fe824\0x00007aef_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.readu_u32)((pe.mmap_va)((hstrlog[1]).VA + 11, 4), 1)
local l_0_1 = (pe.mmap_va)(l_0_0, 12)
if (string.find)(l_0_1, "%w%z%w%z%w%z%w%z%w%z%z%z") >= 0 then
  l_0_0 = (mp.readu_u32)((pe.mmap_va)((hstrlog[3]).VA + 15, 4), 1)
  local l_0_2 = (pe.mmap_va)(l_0_0, 12)
  if (string.find)(l_0_2, "%w%z%w%z%w%z%w%z%w%z%z%z") >= 0 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

