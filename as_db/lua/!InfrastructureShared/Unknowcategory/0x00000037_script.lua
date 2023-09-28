-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000037_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[4]).utf8p2)
  local l_0_1 = l_0_0:match("totalsizeappend:(%d+);")
  if l_0_1 then
    l_0_1 = tonumber(l_0_1)
  end
  local l_0_2 = l_0_0:match("totalsizewrite:(%d+);")
  if l_0_2 then
    l_0_2 = tonumber(l_0_2)
  end
  if l_0_2 > 0 and l_0_1 > 0 then
    local l_0_3 = l_0_0:match("numwrites:(%d+);")
    ;
    (bm.add_related_string)("write_size", tostring(l_0_2), bm.RelatedStringBMReport)
    ;
    (bm.add_related_string)("append_size", tostring(l_0_1), bm.RelatedStringBMReport)
    ;
    (bm.add_related_string)("num_writes", tostring(l_0_3), bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

