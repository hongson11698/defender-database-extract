-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e8d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (((this_sigattrlog[1]).utf8p1):lower()):match("\\amsi\\providers\\({%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x})")
local l_0_1 = ((this_sigattrlog[2]).utf8p1):lower()
local l_0_2 = ((this_sigattrlog[2]).utf8p2):lower()
do
  if l_0_0 ~= nil and l_0_1 ~= nil and l_0_2 ~= nil and l_0_1:find(l_0_0, 1, true) then
    local l_0_3 = (mp.GetExecutablesFromCommandLine)(l_0_2)
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      l_0_8 = (mp.ContextualExpandEnvironmentVariables)(l_0_8)
      if (sysio.IsFileExists)(l_0_8) then
        (bm.add_related_file)(l_0_8)
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

