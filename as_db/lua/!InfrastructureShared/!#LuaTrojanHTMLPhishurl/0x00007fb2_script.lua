-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaTrojanHTMLPhishurl\0x00007fb2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetNormalizedScript)(true)
local l_0_1 = {}
for l_0_5 in (string.gmatch)(l_0_0, "([Hh][Tt][Tt][Pp][Ss]?://%w.-)[\'\"]") do
  if l_0_1[l_0_5] == nil then
    (table.insert)(l_0_1, l_0_5)
  end
end
do
  if l_0_1 == nil or #l_0_1 == 0 then
    return mp.CLEAN
  end
  local l_0_6 = {}
  l_0_6.SIG_CONTEXT = "LuaGen"
  l_0_6.CONTENT_SOURCE = "HTML"
  l_0_6.FILELESS = "false"
  l_0_6.CMDLINE_URL = "false"
  l_0_6.BREAK_AT_FIRST_HIT_MALWARE = "60"
  l_0_6.BREAK_AT_FIRST_HIT_PHISH = "60"
  l_0_6.BREAK_AT_FIRST_HIT_CLEAN = "60"
  l_0_6.TAG = "Email"
  if CheckUrlReputationSimple(l_0_1, l_0_6, 60) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

