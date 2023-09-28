-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000064ee_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
do
  if l_0_0 ~= nil and l_0_0 >= 20480000 then
    local l_0_1 = (pe.get_versioninfo)()
    if not l_0_1 then
      return mp.CLEAN
    end
    if not l_0_1.CompanyName then
      return mp.CLEAN
    end
    if l_0_1.CompanyName == "Microsoft Corporation" then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

