-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\ebb3be413aec\0x00000633_luac 

-- params : ...
-- function num : 0
local l_0_0 = "sensitive_cat_redirection"
local l_0_1 = (bm.get_current_process_startup_info)()
if l_0_1 == nil or l_0_1.ppid == nil or l_0_1.ppid == "" then
  return mp.CLEAN
end
local l_0_2 = (mp.GetParentProcInfo)(l_0_1.ppid)
if l_0_2 == nil or l_0_2.ppid == nil then
  return mp.CLEAN
end
local l_0_3 = (string.lower)((bm.get_imagepath)())
local l_0_4 = (string.lower)(l_0_2.image_path)
local l_0_5 = l_0_1.command_line
local l_0_6 = (mp.GetProcessCommandLine)(l_0_2.ppid)
if (string.find)(l_0_6, "/tmp/.SummitLxAssetAgent.users.tmp", 1, true) ~= nil then
  return mp.CLEAN
end
AppendToRollingQueue(l_0_0, "scr_image_path", l_0_3)
AppendToRollingQueue(l_0_0, "scr_process_cmdline", l_0_5)
AppendToRollingQueue(l_0_0, "scr_parent_image_path", l_0_4)
AppendToRollingQueue(l_0_0, "scr_parent_process_cmdline", l_0_6)
TrackPidAndTechniqueBM("BM", "T1074", "Collection_Redirection_mt2023", 300)
reportRelatedBmHits()
return mp.INFECTED

