-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a33_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("pea_no_exports") and (mp.get_mpattribute)("pea_relocs_stripped") and (mp.get_mpattribute)("pea_locals_symbols_stripped") and (mp.getfilesize)() >= 40960 and (mp.getfilesize)() < 65536 then
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
