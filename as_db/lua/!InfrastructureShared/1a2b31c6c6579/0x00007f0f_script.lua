-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1a2b31c6c6579\0x00007f0f_luac 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = (bm.get_current_process_startup_info)()
do
  if l_0_1 ~= nil and l_0_1.command_line ~= nil then
    local l_0_2 = (string.lower)(l_0_1.command_line)
    if l_0_2:find("%.cpl:", 1, true) then
      l_0_0 = true
    end
    if IsDetectionThresholdMet(l_0_1.ppid) then
      l_0_0 = true
    end
  end
  local l_0_3, l_0_4 = (bm.get_process_relationships)()
  for l_0_8,l_0_9 in ipairs(l_0_3) do
    local l_0_10 = l_0_9.cmd_line
    if l_0_10 ~= nil then
      l_0_10 = (string.lower)(l_0_10)
      if l_0_10:find("%.cpl:", 1, true) then
        (bm.add_related_process)(l_0_9.ppid)
        l_0_0 = true
      end
    end
  end
  for l_0_14,l_0_15 in ipairs(l_0_4) do
    local l_0_16 = l_0_15.cmd_line
    if l_0_16 ~= nil then
      l_0_16 = (string.lower)(l_0_16)
      if l_0_16:find("%.cpl:", 1, true) then
        (bm.add_related_process)(l_0_15.ppid)
        l_0_0 = true
      end
    end
  end
  if l_0_0 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

