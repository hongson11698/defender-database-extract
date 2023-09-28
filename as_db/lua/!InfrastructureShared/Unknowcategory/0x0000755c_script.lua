-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000755c_luac 

-- params : ...
-- function num : 0
do
  if (pesecs[4]).Name == ".imports" and (pesecs[3]).Name == "UPX2" and (mp.getfilesize)() > 60000 and (mp.getfilesize)() < 70000 then
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

