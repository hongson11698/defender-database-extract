-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\179b3eb4437a4\0x00000656_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
local l_0_2, l_0_3 = (bm.get_process_relationships)()
local l_0_4 = false
for l_0_8,l_0_9 in ipairs(l_0_2) do
  if l_0_9.image_path ~= nil then
    local l_0_10 = (string.lower)((MpCommon.PathToWin32Path)(l_0_9.image_path))
    local l_0_11 = (mp.bitand)(l_0_9.reason_ex, 1)
    if l_0_11 == 1 then
      l_0_4 = true
    end
    if l_0_11 == 1 and ((string.find)(l_0_10, "\\system32\\svchost.exe") or (string.find)(l_0_10, "\\system32\\services.exe") or (string.find)(l_0_10, ":\\windows\\", 1, true) ~= nil or (string.find)(l_0_10, ":\\program ", 1, true) == nil) then
      return mp.CLEAN
    end
  end
end
if l_0_4 == false then
  return mp.CLEAN
end
if l_0_1 ~= nil then
  local l_0_12 = (mp.GetExecutablesFromCommandLine)(l_0_1)
  for l_0_16,l_0_17 in ipairs(l_0_12) do
    l_0_17 = (mp.ContextualExpandEnvironmentVariables)(l_0_17)
    if (sysio.IsFileExists)(l_0_17) then
      (bm.add_related_file)(l_0_17)
    end
  end
end
do
  l_0_12 = reportSessionInformation
  l_0_12()
  l_0_12 = add_parents
  l_0_12()
  l_0_12 = mp
  l_0_12 = l_0_12.INFECTED
  return l_0_12
end

