-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b0e_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[3]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[3]).utf8p1)
  if l_0_0 ~= nil then
    local l_0_1, l_0_2 = nil, nil
    l_0_1 = (string.match)(l_0_0, "\\microsoft\\(.+)\\(.+)%.exe")
    if l_0_1 and l_0_2 then
      if l_0_1 == l_0_2 and (string.len)(l_0_2) > 3 then
        return mp.INFECTED
      end
      ;
      (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[3]).utf8p1), 1966641469)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

