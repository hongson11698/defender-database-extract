-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\22cb392152c63\0x00001376_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.command_line
if (string.match)(l_0_1, "((%d+)%.(%d+)%.(%d+)%.(%d+))") then
  return mp.INFECTED
end
return mp.CLEAN

