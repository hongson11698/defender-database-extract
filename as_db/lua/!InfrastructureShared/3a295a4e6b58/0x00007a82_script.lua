-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3a295a4e6b58\0x00007a82_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
if l_0_0.match_offset == 0 then
  return mp.CLEAN
end
local l_0_1 = l_0_0.match_offset
local l_0_2 = 78
if mp.FOOTERPAGE_SZ < l_0_1 + l_0_2 then
  return mp.CLEAN
end
if l_0_0.is_footer then
  local l_0_3 = ((mp.readfooter)(l_0_1, l_0_2)):lower()
  local l_0_4 = (MpCommon.Base64Encode)(l_0_3)
  set_research_data("PDID:C:B", l_0_4, false)
  return mp.INFECTED
end
do
  return mp.CLEAN
end

