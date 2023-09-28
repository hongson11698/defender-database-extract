-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4fd749c70427\0x000073e0_luac 

-- params : ...
-- function num : 0
local l_0_0 = GetRollingQueueKeys("TamperingAlerts_LimitedSet_A")
if l_0_0 ~= nil then
  set_research_data("ThreatsOnMachine", "[" .. (table.concat)(l_0_0, "|") .. "]", false)
  return mp.LOWFI
end
return mp.CLEAN

