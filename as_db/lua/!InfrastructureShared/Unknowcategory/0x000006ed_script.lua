-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006ed_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p1)
    if l_0_0 ~= nil then
      (mp.ReportLowfi)(l_0_0, 3467016256)
    end
  end
  return mp.INFECTED
end

