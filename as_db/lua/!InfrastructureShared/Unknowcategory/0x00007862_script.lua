-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007862_luac 

-- params : ...
-- function num : 0
if (nri.GetHttpCommand)() ~= nri.HTTP_POST then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((nri.GetHttpRequestHeader)("User-Agent"))
if l_0_0 == "winhttp" then
  (nri.AddTelemetry)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH))
  return mp.INFECTED
end
return mp.CLEAN

