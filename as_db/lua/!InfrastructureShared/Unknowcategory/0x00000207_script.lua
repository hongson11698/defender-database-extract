-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000207_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.GetServerRoles)()
if l_0_0 ~= nil then
  for l_0_4,l_0_5 in ipairs(l_0_0) do
    if l_0_5 == "DirectoryServices-DomainController" then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

