-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007971_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p2
if not l_0_0 then
  return mp.CLEAN
end
l_0_0 = (mp.GetExecutablesFromCommandLine)(l_0_0)
if not l_0_0 then
  return mp.CLEAN
end
for l_0_4,l_0_5 in ipairs(l_0_0) do
  if l_0_5 and (sysio.IsFileExists)(l_0_5) and not (mp.IsKnownFriendlyFile)(l_0_5, false, false) then
    (bm.add_related_file)(l_0_5)
  end
end
return mp.INFECTED

