-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000079f0_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("pea_no_exports") and (mp.get_mpattribute)("pea_no_tls") and (mp.get_mpattribute)("pea_suspicious_section_name") and (mp.getfilesize)() >= 1331200 and (mp.getfilesize)() < 1347584 then
    local l_0_0 = (mp.GetCertificateInfo)()
    for l_0_4,l_0_5 in pairs(l_0_0) do
      if l_0_5.Signers ~= nil then
        return mp.CLEAN
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

