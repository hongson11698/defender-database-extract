-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000ef6_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = nil
  local l_0_1 = (string.lower)((bm.get_imagepath)())
  if (this_sigattrlog[1]).utf8p2 ~= nil then
    l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
  end
  if l_0_1:find("appvclient%.exe") ~= nil then
    return mp.CLEAN
  end
  if l_0_0 ~= nil then
    local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    for l_0_6,l_0_7 in ipairs(l_0_2) do
      l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
      if (sysio.IsFileExists)(l_0_7) then
        (bm.add_related_file)(l_0_7)
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.INFECTED
  return l_0_0
end

