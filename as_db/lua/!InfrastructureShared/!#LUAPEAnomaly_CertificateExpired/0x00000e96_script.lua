-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAPEAnomaly_CertificateExpired\0x00000e96_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetCertificateInfo)()
local l_0_1, l_0_2, l_0_3 = (MpCommon.GetDateFromTimeT)((MpCommon.GetCurrentTimeT)())
for l_0_7,l_0_8 in ipairs(l_0_0) do
  if l_0_8.AuthenticodeContentType ~= "PE" then
    return mp.CLEAN
  end
  local l_0_9 = l_0_8.Certificates
  if l_0_9 ~= nil then
    for l_0_13,l_0_14 in ipairs(l_0_9) do
      local l_0_15 = l_0_14.ValidTo
      if l_0_15 ~= nil then
        local l_0_16 = l_0_15.Year
        local l_0_17 = l_0_15.Month
        if l_0_16 < l_0_3 or ((l_0_16 == l_0_3 and l_0_17 < l_0_2) or l_0_16 ~= l_0_3 or l_0_17 ~= l_0_2 or l_0_15.Day < l_0_1) then
          return mp.INFECTED
        end
      end
    end
  end
end
do return mp.CLEAN end
-- DECOMPILER ERROR at PC54: Confused about usage of register R4 for local variables in 'ReleaseLocals'


