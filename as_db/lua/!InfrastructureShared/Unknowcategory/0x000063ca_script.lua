-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063ca_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = (this_sigattrlog[1]).utf8p2
    ;
    (bm.add_related_string)("vname", l_0_0, bm.RelatedStringBMReport)
  end
  return mp.INFECTED
end

