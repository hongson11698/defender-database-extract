-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d93_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
if l_0_0 and l_0_1 ~= nil then
  local l_0_2 = l_0_1.command_line
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3 = (string.lower)(l_0_2)
  if (l_0_3:find("powershell", 1, true) or (l_0_3.find)("pwsh", 1, true)) and l_0_3:match("%s+[%-/]en?c?o?d?e?d?c?o?m?m?a?n?d?%s+") then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

