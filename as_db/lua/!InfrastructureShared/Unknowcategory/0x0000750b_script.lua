-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000750b_luac 

-- params : ...
-- function num : 0
if peattributes.isvbnative == true then
  local l_0_0 = (hstrlog[2]).VA
  local l_0_1 = (pe.mmap_va)(l_0_0 + 7, 4)
  local l_0_2 = 0
  for l_0_6 = 4, 1, -1 do
    l_0_2 = l_0_2 * 256 + (string.byte)(l_0_1, l_0_6)
  end
  if l_0_2 > 8192 then
    return mp.INFECTED
  end
end
do
  return mp.LOWFI
end

