-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000777b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0.command_line)
for l_0_5,l_0_6 in ipairs(l_0_1) do
  if (sysio.IsFileExists)(l_0_6) and not (mp.IsKnownFriendlyFile)(l_0_6, true, false) then
    (mp.ReportLowfi)(l_0_6, 1834945633)
  end
end
return mp.INFECTED

