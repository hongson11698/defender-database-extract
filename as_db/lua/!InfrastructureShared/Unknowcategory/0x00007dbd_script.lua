-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007dbd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (nri.GetHttpRequestHeader)("User-Agent")
local l_0_1 = (string.lower)((nri.GetURI)())
local l_0_2 = (string.find)(l_0_1, "?", 1, true)
if (string.find)(l_0_1, "&signature_id=%d+&_action_=getbin", l_0_2) == nil and (string.find)(l_0_0, "Guarded New Install System", 1, true) == nil then
  return mp.CLEAN
end
local l_0_3 = {}
l_0_3.useragent = l_0_0
;
(nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), l_0_3)
return mp.INFECTED

