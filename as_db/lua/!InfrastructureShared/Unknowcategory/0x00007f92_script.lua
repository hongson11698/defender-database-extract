-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f92_luac 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = nil
local l_0_2 = ""
local l_0_3 = (mp.GetBruteMatchData)()
local l_0_4 = l_0_3.match_offset + 1
local l_0_5 = l_0_3.match_offset + 1 + 200
if l_0_3.is_header then
  l_0_2 = ((tostring(headerpage)):sub(l_0_4, l_0_5)):lower()
else
  l_0_2 = ((tostring(footerpage)):sub(l_0_4, l_0_5)):lower()
end
l_0_1 = l_0_2:match("%(gi ([^%)]*)%).FullName;")
if l_0_1 == nil then
  l_0_1 = l_0_2:match("%(get%-item ([^%)]*)%).FullName;")
  if l_0_1 == nil then
    l_0_1 = l_0_2:match("%.gacinstall%([\"\']([^%)]*)[\"\']")
  end
end
if not l_0_1 then
  return mp.CLEAN
end
if (sysio.IsFileExists)(l_0_1) and not (mp.IsKnownFriendlyFile)(l_0_1, true, false) then
  (mp.ReportLowfi)(l_0_1, 2494279482)
  l_0_0 = true
end
if l_0_0 then
  return mp.INFECTED
end
return mp.CLEAN

