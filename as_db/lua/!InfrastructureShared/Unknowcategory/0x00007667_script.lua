-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007667_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p1)
  local l_0_1 = (mp.GetMotwHostUrlForFile)(l_0_0)
  if l_0_1 then
    (bm.add_related_string)("bmurl", l_0_1, bm.RelatedStringBMReport)
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

