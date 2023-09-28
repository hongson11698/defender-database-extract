-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6bb3ce3f7a86\0x00000632_luac 

-- params : ...
-- function num : 0
local l_0_0 = "sensitive_cat_redirection"
local l_0_1 = (bm.get_current_process_startup_info)()
if l_0_1 == nil or l_0_1.ppid == nil or l_0_1.ppid == "" then
  return mp.CLEAN
end
local l_0_2 = GetTacticsTableForPid(l_0_1.ppid)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = 0
for l_0_7,l_0_8 in pairs(l_0_2) do
  if (string.find)(l_0_7, "mt2023", 1, true) then
    l_0_3 = l_0_3 + 1
  end
end
if l_0_3 > 2 then
  local l_0_9 = GetRollingQueueAsHashTable(l_0_0)
  local l_0_10 = ""
  local l_0_11 = ""
  local l_0_12 = ""
  local l_0_13 = ""
  if l_0_9 == nil then
    return mp.CLEAN
  end
  if l_0_9.scr_image_path ~= nil then
    l_0_10 = l_0_9.scr_image_path
  end
  if l_0_9.scr_process_cmdline ~= nil then
    l_0_11 = l_0_9.scr_process_cmdline
  end
  if l_0_9.scr_parent_image_path ~= nil then
    l_0_12 = l_0_9.scr_parent_image_path
  end
  if l_0_9.scr_parent_process_cmdline ~= nil then
    l_0_13 = l_0_9.scr_parent_process_cmdline
  end
  ;
  (bm.add_related_string)("scr_image_path", l_0_10, bm.RelatedStringBMReport)
  ;
  (bm.add_related_string)("scr_process_cmdline", l_0_11, bm.RelatedStringBMReport)
  ;
  (bm.add_related_string)("scr_parent_image_path", l_0_12, bm.RelatedStringBMReport)
  ;
  (bm.add_related_string)("scr_parent_process_cmdline", l_0_13, bm.RelatedStringBMReport)
  reportRelatedBmHits()
  return mp.INFECTED
end
do
  return mp.CLEAN
end

