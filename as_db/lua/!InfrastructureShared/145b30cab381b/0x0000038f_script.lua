-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\145b30cab381b\0x0000038f_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
if l_0_0 then
  bm_AddRelatedFileFromCommandLine(l_0_1.command_line, nil, nil, 1)
end
local l_0_2, l_0_3 = nil, nil
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  l_0_2 = (this_sigattrlog[2]).utf8p2
  l_0_3 = (this_sigattrlog[2]).utf8p1 or ""
else
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    l_0_2 = (this_sigattrlog[3]).utf8p2
    l_0_3 = (this_sigattrlog[3]).utf8p1 or ""
  end
end
if l_0_2 ~= nil and l_0_2 ~= "" then
  local l_0_4 = (string.lower)(l_0_2)
  local l_0_5 = (string.lower)(l_0_3)
  if l_0_4:find("amlsaap", 1, true) or l_0_5:find("amlsaap", 1, true) then
    return mp.CLEAN
  end
  if l_0_4:find("wsauth$") then
    return mp.CLEAN
  end
  if l_0_4:find("tspkg$") then
    return mp.CLEAN
  end
  local l_0_6 = (mp.GetExecutablesFromCommandLine)(l_0_2)
  for l_0_10,l_0_11 in ipairs(l_0_6) do
    l_0_11 = (mp.ContextualExpandEnvironmentVariables)(l_0_11)
    if (sysio.IsFileExists)(l_0_11) then
      (bm.add_threat_file)(l_0_11)
    end
  end
  TrackPidAndTechniqueBM(l_0_1.ppid, "T1547.005", "ssp_tamper")
  return mp.INFECTED
end
do
  return mp.CLEAN
end

