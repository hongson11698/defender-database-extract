-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c21_luac 

-- params : ...
-- function num : 0
local l_0_0 = (nri.GetSSLCertificate)()
local l_0_1 = {}
do
  if l_0_0 then
    local l_0_2 = {}
    l_0_2.useragent = (nri.GetHttpRequestHeader)("User-Agent")
    l_0_2.Subject = l_0_0.Subject
    l_0_2.Issuer = l_0_0.Issuer
    l_0_2.ValidFrom = l_0_0.ValidFrom
    l_0_2.ValidTo = l_0_0.ValidTo
    l_0_2.FingerprintSha1 = l_0_0.FingerprintSha1
    l_0_2.FingerprintSha256 = l_0_0.FingerprintSha256
    l_0_1 = l_0_2
  end
  ;
  (nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), l_0_1)
  return mp.INFECTED
end

