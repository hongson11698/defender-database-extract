-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000663e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (nri.GetSSLCertificate)()
if l_0_0 and l_0_0.Subject == l_0_0.Issuer then
  local l_0_1 = l_0_0.Subject
  local l_0_2, l_0_3 = (string.match)(l_0_1, ", OU=(.+), CN=(.+), EMAIL=(.+)")
  if ", OU=(.+), CN=(.+), EMAIL=(.+)" == l_0_2 .. "@" .. l_0_3 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

