-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007540_luac 

-- params : ...
-- function num : 0
if (hstrlog[2]).hitcount > 3 then
  if mp.HSTR_WEIGHT == 26 then
    return mp.INFECTED
  end
  local l_0_0 = (pe.mmap_va)((hstrlog[1]).VA - 18, 16)
  if (string.find)(l_0_0, "DenyListedUsers", 1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

