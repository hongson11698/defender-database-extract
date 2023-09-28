-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\15b3e501e165\0x00000a28_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.command_line == nil then
  return mp.CLEAN
end
if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") then
  local l_0_1, l_0_2 = GetDetectionThresholdMetReason(l_0_0.ppid)
  if l_0_1 and l_0_2 ~= 2 then
    bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 1)
    local l_0_3, l_0_4 = (bm.get_process_relationships)()
    for l_0_8,l_0_9 in ipairs(l_0_3) do
      if l_0_9.cmd_line ~= nil then
        local l_0_10 = (string.lower)(l_0_9.cmd_line)
        if l_0_10:find("\\lenovo", 1, true) or l_0_10:find("\\eset\\bts.session", 1, true) or l_0_10:find("\\tanium", 1, true) then
          return mp.CLEAN
        end
      end
    end
    for l_0_14,l_0_15 in ipairs(l_0_4) do
      local l_0_16 = (mp.bitand)(l_0_15.reason_ex, bm.RELATIONSHIP_INJECTION)
      if l_0_16 == bm.RELATIONSHIP_INJECTION then
        (bm.add_threat_process)(l_0_15.ppid)
      end
    end
    AddResearchData(l_0_0.ppid, true)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

