-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000778a_luac 

-- params : ...
-- function num : 0
do
  if peattributes.isdll == true and (mp.get_mpattribute)("pea_no_security") and (mp.getfilesize)() > 3000000 and (mp.getfilesize)() < 5000000 then
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

