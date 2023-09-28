-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000010a7_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 5) == (mp.getfilesize)() - 12 then
  local l_0_0 = (mp.bitxor)((mp.readu_u32)(headerpage, 1), (mp.readu_u32)(headerpage, 9))
  if l_0_0 >= 65536 and l_0_0 < 262144 then
    local l_0_1 = (mp.readu_u32)(headerpage, 1)
    l_0_1 = l_0_1 + (mp.shr32)(l_0_1, 1)
    l_0_1 = l_0_1 - (mp.shl32)(l_0_1, 2)
    l_0_1 = l_0_1 - (mp.shr32)(l_0_1, 3)
    l_0_1 = (l_0_1) * 17
    l_0_1 = l_0_1 - (mp.shl32)(l_0_1, 2)
    l_0_1 = l_0_1 - (mp.shr32)(l_0_1, 3)
    l_0_1 = (l_0_1) * 17
    l_0_1 = l_0_1 - (mp.shr32)(l_0_1, 3)
    l_0_1 = (l_0_1) * 17
    l_0_1 = l_0_1 * 17
    if (mp.bitxor)(headerpage[16], (mp.bitand)(l_0_1, 255)) ~= 77 then
      return mp.CLEAN
    end
    l_0_1 = l_0_1 + (mp.shr32)(l_0_1, 1)
    l_0_1 = l_0_1 - (mp.shl32)(l_0_1, 2)
    l_0_1 = l_0_1 - (mp.shr32)(l_0_1, 3)
    l_0_1 = (l_0_1) * 17
    if (mp.bitxor)(headerpage[17], (mp.bitand)(l_0_1, 255)) ~= 90 then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("MpNonPIIFileType")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

