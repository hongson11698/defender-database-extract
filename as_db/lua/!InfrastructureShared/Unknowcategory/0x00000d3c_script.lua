-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d3c_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (mp.GetExecutablesFromCommandLine)((this_sigattrlog[1]).utf8p2)
  for l_0_4,l_0_5 in ipairs(l_0_0) do
    l_0_5 = (mp.ContextualExpandEnvironmentVariables)(l_0_5)
    if (sysio.IsFileExists)(l_0_5) then
      (bm.add_related_file)(l_0_5)
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.INFECTED
  return l_0_0
end

