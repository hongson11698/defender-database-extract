-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1d9b3a9392bab\0x0000058c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0.command_line then
  bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 1)
  local l_0_1 = nil
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
    l_0_1 = (this_sigattrlog[5]).utf8p2
  end
  if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
    l_0_1 = (this_sigattrlog[6]).utf8p2
  end
  if l_0_1 ~= nil then
    bm_AddRelatedFileFromCommandLine(l_0_1, nil, nil, 1)
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

