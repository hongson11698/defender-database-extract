-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007998_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
for l_0_4 = 1, mp.SIGATTR_LOG_SZ do
  if (sigattr_head[l_0_4]).matched and (sigattr_head[l_0_4]).attribute == 28769 then
    local l_0_5 = (sigattr_head[l_0_4]).utf8p1
    l_0_0.TlsJa3SHash = l_0_5
    ;
    (nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), l_0_0)
  end
end
return mp.INFECTED

