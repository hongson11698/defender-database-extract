-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001444_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_2 = nil, nil
do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
    local l_0_1, l_0_3, l_0_5 = , (string.lower)((this_sigattrlog[3]).utf8p1)
  else
  end
  if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p1 == nil or (this_sigattrlog[5]).matched) and (string.lower)((this_sigattrlog[4]).utf8p1) ~= nil then
    local l_0_4 = this_sigattrlog[5]
    local l_0_6 = nil
    if (string.lower)(l_0_4.utf8p1) ~= nil and (string.find)((string.lower)(l_0_4.utf8p1), l_0_6, 1, true) then
      (bm.add_related_file)(l_0_6)
      return mp.INFECTED
    end
    local l_0_7 = nil
    if (string.find)((string.lower)(l_0_4.utf8p2), l_0_6, 1, true) then
      (bm.add_related_file)(l_0_6)
      return mp.INFECTED
    end
  end
  do
    return mp.CLEAN
  end
end

