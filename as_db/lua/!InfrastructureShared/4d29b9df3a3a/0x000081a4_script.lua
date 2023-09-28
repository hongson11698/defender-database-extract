-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4d29b9df3a3a\0x000081a4_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("OfficeTemplateRepChecked") or (mp.get_mpattribute)("Detection:TrojanDownloader:O97M/BadTemplate.D") or not (mp.get_mpattribute)("//AGGR:OfficeFileOLE_1") then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("//SCPT:OleExternalRelationship.Template")
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = (mp.GetNormalizedScript)(l_0_0.is_header)
if l_0_1 == "" or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = {}
for l_0_6 in (string.gmatch)(l_0_1, "Target=\"([Hh][Tt][Tt][Pp][Ss]?:[^\"]-)\"") do
  if l_0_2[l_0_6] == nil then
    (table.insert)(l_0_2, l_0_6)
  end
end
do
  if l_0_2 == nil or #l_0_2 == 0 then
    return mp.CLEAN
  end
  local l_0_7 = {}
  l_0_7.SIG_CONTEXT = "Office External Template"
  l_0_7.CONTENT_SOURCE = "Office External Template"
  l_0_7.PROCESS_CONTEXT = "Office"
  l_0_7.PARENT_CONTEXT = nil
  l_0_7.FILELESS = "false"
  l_0_7.CMDLINE_URL = "false"
  l_0_7.BREAK_AT_FIRST_HIT_MALWARE = "60"
  l_0_7.BREAK_AT_FIRST_HIT_PHISH = "60"
  if (mp.get_mpattribute)("InEmail") then
    l_0_7.TAG = "Email"
  end
  if CheckUrlReputationSimple(l_0_2, l_0_7, 60) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

