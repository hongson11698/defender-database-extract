-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006468_luac 

-- params : ...
-- function num : 0
do
  if (versioning.GetEngineBuild)() >= 16700 then
    local l_0_0 = (versioning.GetOrgID)()
    if l_0_0 and (string.lower)(l_0_0) == "d7c7c745-195f-4223-9c7a-99fb420fd000" then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

