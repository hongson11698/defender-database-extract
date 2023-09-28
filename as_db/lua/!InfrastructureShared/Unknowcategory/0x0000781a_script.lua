-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000781a_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil and (this_sigattrlog[1]).utf8p2 ~= nil then
  (bm.add_related_file)((this_sigattrlog[1]).utf8p1)
  ;
  (bm.add_related_file)((this_sigattrlog[1]).utf8p2)
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil and (this_sigattrlog[2]).utf8p2 ~= nil then
    (bm.add_related_file)((this_sigattrlog[2]).utf8p1)
    ;
    (bm.add_related_file)((this_sigattrlog[2]).utf8p2)
  end
end
return mp.INFECTED

