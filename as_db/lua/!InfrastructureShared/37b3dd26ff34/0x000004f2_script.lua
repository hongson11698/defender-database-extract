-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\37b3dd26ff34\0x000004f2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0 ~= nil and l_0_0.command_line ~= nil then
    local l_0_1 = (string.lower)(l_0_0.command_line)
    if l_0_1:find("antimalware_provider.+\\frhook") then
      return mp.CLEAN
    end
    if l_0_1:find("c:\\sophrm\\invoke-blkeyescrow.ps1", 1, true) then
      return mp.CLEAN
    end
    if l_0_1:find("c:\\vpc10\\applicationupdate\\sub_settings_defender.vbs", 1, true) then
      return mp.CLEAN
    end
    if (l_0_1:find(":\\program files\\", 1, true) or l_0_1:find(":\\program files (x86)\\", 1, true)) and (l_0_1:find("checkpoint", 1, true) or l_0_1:find("fortinet", 1, true)) then
      return mp.CLEAN
    end
    bm_AddRelatedFileFromCommandLine(l_0_1, nil, nil, 1)
    AddResearchData(l_0_0.ppid, true)
    return mp.INFECTED
  end
  return mp.CLEAN
end

