-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b3e84e5f39\0x00007dfd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0 ~= nil and l_0_0.command_line ~= nil then
    local l_0_1 = (string.lower)(l_0_0.command_line)
    bm_AddRelatedFileFromCommandLine(l_0_1, nil, nil, 6)
  end
  sms_untrusted_process()
  local l_0_2 = mp.CLEAN
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
    l_0_2 = reportGenericRansomware((this_sigattrlog[2]).utf8p2, true)
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 then
      l_0_2 = reportGenericRansomware((this_sigattrlog[3]).utf8p2, true)
    end
  end
  if l_0_2 == mp.INFECTED then
    return mp.INFECTED
  end
  return mp.CLEAN
end

