-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\8bb34abea13d\0x00000fd5_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p2)
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_1 = (string.lower)((this_sigattrlog[4]).utf8p1)
    if l_0_1:find("%.dll$") then
      return mp.CLEAN
    end
    local l_0_2 = (string.lower)(l_0_1:match("\\([^\\]+)$"))
    if l_0_0:find(l_0_2, 1, true) then
      local l_0_3 = (bm.get_current_process_startup_info)()
      if l_0_3 and l_0_3.command_line ~= nil then
        bm_AddRelatedFileFromCommandLine(l_0_3.command_line, nil, nil, 1)
        TrackPidAndTechniqueBM(l_0_3.ppid, "T1036", "masq_regsvr32")
      end
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

