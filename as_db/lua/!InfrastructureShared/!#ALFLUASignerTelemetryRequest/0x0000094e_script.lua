-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLUASignerTelemetryRequest\0x0000094e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetCertificateInfo)(false)
if l_0_0 == nil then
  return mp.CLEAN
end
for l_0_4,l_0_5 in pairs(l_0_0) do
  local l_0_6 = (string.format)("%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x", (string.byte)((((l_0_5.Signers)[1]).Fingerprint).Hash, 0, #(((l_0_5.Signers)[1]).Fingerprint).Hash))
  l_0_6 = (string.gsub)(l_0_6, " ", "0")
  if #l_0_6 == 40 then
    local l_0_7 = 158
    local l_0_8, l_0_9, l_0_10 = (MpCommon.SNidSearch)(l_0_7, l_0_6)
    if l_0_8 then
      return mp.CLEAN
    else
      for l_0_14,l_0_15 in pairs(l_0_5.Certificates) do
        local l_0_16 = (string.format)("%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x", (string.byte)((l_0_15.FingerprintSha1).Hash, 0, #(l_0_15.FingerprintSha1).Hash))
        l_0_16 = (string.gsub)(l_0_16, " ", "0")
        if l_0_6 == l_0_16 then
          local l_0_17 = (mp.utf16to8)((l_0_15.Subject).CommonName)
          local l_0_18 = (crypto.Sha1Buffer)(l_0_17, 0, #l_0_17)
          local l_0_19 = 157
          if (MpCommon.SNidSearch)(l_0_19, l_0_18) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
do return mp.CLEAN end
-- DECOMPILER ERROR at PC107: Confused about usage of register R5 for local variables in 'ReleaseLocals'


