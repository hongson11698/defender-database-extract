-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#OfficeExecutableContentWriteASRAppDataMSBypas\0x0000102b_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("1d9fb1e9-5186-49a5-92bd-86a3db551b47") then
  return mp.CLEAN
end
local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if l_0_0 and (sysio.IsFileExists)(l_0_1) then
  local l_0_2 = (mp.ContextualExpandEnvironmentVariables)("%appdata%")
  l_0_2 = (l_0_2 == nil and "" or l_0_2):lower()
  if l_0_1:find(l_0_2 .. "\\microsoft\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  local l_0_3 = (mp.ContextualExpandEnvironmentVariables)("%localappdata%")
  l_0_3 = (l_0_3 == nil and "" or l_0_3):lower()
  if l_0_1:find(l_0_3 .. "\\microsoft\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  ;
  (mp.SetHipsRule)("1d9fb1e9-5186-49a5-92bd-86a3db551b47")
  return mp.BLOCKEXECUTION
end
do
  return mp.CLEAN
end

