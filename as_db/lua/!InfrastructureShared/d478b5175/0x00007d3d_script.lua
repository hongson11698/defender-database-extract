-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d478b5175\0x00007d3d_luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
if (hstrlog[4]).matched then
  local l_0_1 = (hstrlog[4]).VA + 32
  local l_0_2 = (mp.readu_u32)((pe.mmap_va)(l_0_1, 4), 1)
  local l_0_3 = (mp.utf16to8)((pe.mmap_va)(l_0_2, 40))
  if (string.match)(l_0_3, "ServerL") or (string.match)(l_0_3, "rList") then
    return mp.INFECTED
  end
  l_0_0 = 3
end
do
  if mp.HSTR_WEIGHT - l_0_0 >= 5 then
    return mp.INFECTED
  else
    if mp.HSTR_WEIGHT - l_0_0 >= 4 then
      return mp.SUSPICIOUS
    end
  end
  return mp.CLEAN
end

