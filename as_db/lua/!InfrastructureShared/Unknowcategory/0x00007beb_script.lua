-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007beb_luac 

-- params : ...
-- function num : 0
if (nri.GetHttpCommand)() ~= nri.HTTP_POST then
  return mp.CLEAN
end
local l_0_0 = {}
l_0_0.useragent = (nri.GetHttpRequestHeader)("User-Agent")
l_0_0["accept-encoding"] = (nri.GetHttpRequestHeader)("Accept-Encoding")
l_0_0.host = (nri.GetHttpRequestHeader)("Host")
;
(nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), l_0_0)
return mp.INFECTED

