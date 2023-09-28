-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFPERSuspDigitalCertA!dha\0x00006cf7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_mpattributevalue)("RPF:SuspiciousDigitalSignatureSize")
if l_0_0 ~= nil and l_0_0 >= 65536 then
  return mp.INFECTED
end
return mp.CLEAN

