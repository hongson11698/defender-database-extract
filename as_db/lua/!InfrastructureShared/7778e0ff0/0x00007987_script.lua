-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\7778e0ff0\0x00007987_luac 

-- params : ...
-- function num : 0
if (hstrlog[2]).matched then
  local l_0_0 = (hstrlog[2]).VA + 11
  local l_0_1 = (mp.readu_u32)((pe.mmap_va)(l_0_0, 4), 1)
  local l_0_2 = (pe.mmap_va)(l_0_1, 10)
  if (string.sub)(l_0_2, 1, 7) == "Alina v" and (string.sub)(l_0_2, 9, 9) == "." then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

