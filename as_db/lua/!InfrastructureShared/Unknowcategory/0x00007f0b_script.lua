-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f0b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = l_0_0.match_offset + 1
local l_0_2 = l_0_0.match_offset + 1 + 1024
local l_0_3 = ((tostring(l_0_0.is_header and headerpage or footerpage)):sub(l_0_1, l_0_2)):lower()
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_3)
for l_0_8,l_0_9 in ipairs(l_0_4) do
  if l_0_9:find("insert.ps1", 1, true) or l_0_9:find("get-bitlockerkeys.ps1", 1, true) then
    return mp.CLEAN
  end
  if (sysio.IsFileExists)(l_0_9) and not (mp.IsKnownFriendlyFile)(l_0_9, false, false) then
    (mp.ReportLowfi)(l_0_9, 443472619)
  end
end
return mp.INFECTED

