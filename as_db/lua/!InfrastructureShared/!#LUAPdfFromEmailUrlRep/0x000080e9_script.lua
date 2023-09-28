-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAPdfFromEmailUrlRep\0x000080e9_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if (string.find)(l_0_0, "->(PdfUriList)", -15, true) == nil then
  return mp.CLEAN
end
local l_0_1 = split(tostring(headerpage), "\r\n")
local l_0_2 = {}
for l_0_6,l_0_7 in ipairs(l_0_1) do
  local l_0_8, l_0_9 = (MpCommon.StringRegExpSearch)("^(?:(?:https?|ftp):\\/\\/)?[\\w\\-]+(?:\\.[\\w\\-]+)+", (string.lower)(l_0_7))
  if l_0_8 == true and #l_0_7 > 5 then
    (table.insert)(l_0_2, l_0_7)
  end
end
local l_0_10 = {}
l_0_10.SIG_CONTEXT = "LuaGen"
l_0_10.CONTENT_SOURCE = "PDF"
l_0_10.FILELESS = "false"
l_0_10.CMDLINE_URL = "false"
l_0_10.BREAK_AT_FIRST_HIT_MALWARE = "60"
l_0_10.BREAK_AT_FIRST_HIT_PHISH = "60"
l_0_10.BREAK_AT_FIRST_HIT_CLEAN = "60"
l_0_10.TAG = "Email"
if CheckUrlReputationSimple(l_0_2, l_0_10, 60) == true then
  return mp.INFECTED
end
return mp.CLEAN

