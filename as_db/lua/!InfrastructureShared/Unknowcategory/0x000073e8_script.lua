-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073e8_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("pea_isexe") then
    local l_0_0 = (pe.get_versioninfo)()
    if l_0_0 and l_0_0.CompanyName == "Microsoft Corporation" and l_0_0.FileDescription == "Azure Batch Service Manager" and l_0_0.LegalCopyright == "Microsoft Corporation" then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

