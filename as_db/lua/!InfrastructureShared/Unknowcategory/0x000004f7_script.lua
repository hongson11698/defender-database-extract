-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000004f7_luac 

-- params : ...
-- function num : 0
if (mp.get_sigattr_event_count)(16384) > 50 then
  return mp.CLEAN
end
local l_0_0 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_0 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_0 = (this_sigattrlog[2]).utf8p2
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      l_0_0 = (this_sigattrlog[3]).utf8p2
    else
      if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
        l_0_0 = (this_sigattrlog[4]).utf8p2
      else
        if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
          l_0_0 = (this_sigattrlog[5]).utf8p2
        else
          if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
            l_0_0 = (this_sigattrlog[6]).utf8p2
          end
        end
      end
    end
  end
end
if l_0_0 ~= nil then
  local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
  for l_0_5,l_0_6 in ipairs(l_0_1) do
    l_0_6 = (mp.ContextualExpandEnvironmentVariables)(l_0_6)
    if (sysio.IsFileExists)(l_0_6) == true then
      (bm.add_related_file)(l_0_6)
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.INFECTED
  return l_0_1
end

