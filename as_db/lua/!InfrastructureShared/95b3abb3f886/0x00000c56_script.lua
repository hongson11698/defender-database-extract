-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\95b3abb3f886\0x00000c56_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0.command_line then
    local l_0_1 = {}
    l_0_1[".one"] = true
    l_0_1[".hta"] = true
    bm_AddRelatedFileFromCommandLine(l_0_0.command_line, l_0_1, nil, 6)
    return mp.INFECTED
  end
  return mp.CLEAN
end

