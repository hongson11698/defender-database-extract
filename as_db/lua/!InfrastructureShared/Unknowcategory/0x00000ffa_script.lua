-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000ffa_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if not peattributes.isdll then
    return mp.CLEAN
  end
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if l_0_1 ~= "googleupdate.dll" and l_0_1 ~= "googleupdatehelper.dll" then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_2:sub(-26) ~= "\\google\\chrome\\application" then
    return mp.CLEAN
  end
  if l_0_2:find("\\program files", 1, true) == nil then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

