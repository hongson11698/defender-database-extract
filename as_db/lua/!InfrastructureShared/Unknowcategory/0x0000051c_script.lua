-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000051c_luac 

-- params : ...
-- function num : 0
local l_0_0 = 3
if l_0_0 * 10000000 < (bm.GetProcedureMatchDuration)(1) then
  return mp.CLEAN
end
do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_1 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1)
    if l_0_1 ~= nil then
      (bm.add_related_file)(l_0_1)
    end
  end
  return mp.INFECTED
end

