-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1e9b3fd169da2\0x0000088d_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 200000000 then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.reason == 2 and l_0_6.cmd_line ~= nil then
    local l_0_7 = (string.lower)(l_0_6.cmd_line)
    if l_0_7:find("\\lenovo", 1, true) or l_0_7:find("\\eset\\bts.session", 1, true) or l_0_7:find("\\tanium", 1, true) then
      return mp.CLEAN
    end
  end
end
local l_0_8 = nil
if (this_sigattrlog[13]).matched and (this_sigattrlog[13]).utf8p1 ~= nil then
  l_0_8 = (string.lower)((this_sigattrlog[13]).utf8p1)
end
if l_0_8 ~= nil then
  l_0_8 = (mp.ContextualExpandEnvironmentVariables)(l_0_8)
  if (sysio.IsFileExists)(l_0_8) and not (mp.IsKnownFriendlyFile)(l_0_8, true, false) then
    (bm.add_related_file)(l_0_8)
    AddResearchData((this_sigattrlog[13]).ppid, true)
    return mp.INFECTED
  end
end
return mp.CLEAN

