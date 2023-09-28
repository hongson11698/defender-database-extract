-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\f8b37df474f4\0x00000c05_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.command_line ~= nil and l_0_0.command_line ~= "" then
  bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 6)
end
return mp.INFECTED

