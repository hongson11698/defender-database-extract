-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b313bc3f00\0x00007c4d_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.CLEAN
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
  l_0_0 = reportGenericRansomware((this_sigattrlog[2]).utf8p2, true)
else
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 then
    l_0_0 = reportGenericRansomware((this_sigattrlog[3]).utf8p2, true)
  end
end
do
  if l_0_0 == mp.INFECTED then
    local l_0_1 = (bm.get_current_process_startup_info)()
    if l_0_1.command_line then
      bm_AddRelatedFileFromCommandLine(l_0_1.command_line, nil, nil, 4)
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

