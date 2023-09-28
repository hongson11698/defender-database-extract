-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000a39_luac 

-- params : ...
-- function num : 0
if peattributes.no_ep then
  return mp.CLEAN
end
if peattributes.resource_only_dll then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 then
  if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_0 ~= mp.SCANREASON_UNKNOWN then
    return mp.CLEAN
  end
  local l_0_1 = (mp.getfilename)()
  if #l_0_1 > 4 and (string.sub)(l_0_1, 1, 1) ~= "/" then
    return mp.CLEAN
  end
  local l_0_2 = (mp.GetCertificateInfo)(true)
  if not l_0_2 then
    return mp.INFECTED
  end
  local l_0_3 = (mp.utf8to16)("Microsoft Corporation")
  for l_0_7,l_0_8 in pairs(l_0_2) do
    local l_0_9 = {}
    local l_0_10 = l_0_8.Certificates
    local l_0_11 = l_0_8.Signers
    if l_0_8.AuthenticodeContentType == "PE" and l_0_10 and l_0_11 then
      for l_0_15,l_0_16 in pairs(l_0_10) do
        local l_0_17 = l_0_16.Subject
        local l_0_18 = l_0_16.FingerprintSha1
        if l_0_17 and l_0_18 and l_0_17.Organization == l_0_3 then
          (table.insert)(l_0_9, l_0_18.Hash)
        end
      end
      for l_0_22,l_0_23 in pairs(l_0_11) do
        for l_0_27,l_0_28 in pairs(l_0_9) do
          if l_0_23.Verified == "Verified" and (l_0_23.Fingerprint).Hash == l_0_28 then
            return mp.CLEAN
          end
        end
      end
    end
  end
  do return mp.INFECTED end
  -- DECOMPILER ERROR at PC123: Confused about usage of register R6 for local variables in 'ReleaseLocals'

end
l_0_1 = mp
l_0_1 = l_0_1.CLEAN
do return l_0_1 end
-- DECOMPILER ERROR at PC126: Confused about usage of register R5 for local variables in 'ReleaseLocals'


