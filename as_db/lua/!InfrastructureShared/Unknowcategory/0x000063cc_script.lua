-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063cc_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil and (this_sigattrlog[5]).utf8p2 ~= nil then
  (bm.add_related_file)((this_sigattrlog[5]).utf8p1)
  ;
  (bm.add_related_file)((this_sigattrlog[5]).utf8p2)
end
return mp.INFECTED

