-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d25_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  if (string.find)(l_0_0, "/u ", 1, true) and (string.find)(l_0_0, "/i:", 1, true) then
    local l_0_1 = nil
    if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
      l_0_1 = (this_sigattrlog[1]).utf8p2
    end
    local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
    for l_0_6,l_0_7 in ipairs(l_0_2) do
      l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
      ;
      (bm.add_threat_file)(l_0_7)
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

