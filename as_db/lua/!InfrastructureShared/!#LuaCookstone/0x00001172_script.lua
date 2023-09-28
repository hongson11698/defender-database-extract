-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaCookstone\0x00001172_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.enum_mpattributesubstring)("SCPT:Cookstone")
if #l_0_0 > 0 then
  local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_1:find("mtprotostate", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("\\downloads\\", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("\\telegram desktop", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("bot\\", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("greenlet\\", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("\\bot", 1, true) then
    return mp.CLEAN
  end
  local l_0_2 = (mp.enum_mpattributesubstring)("SCPT:CookstoneA")
  if #l_0_2 > 0 and (l_0_1:find("telegram", 1, true) or l_0_1:find("mitm_manager", 1, true) or l_0_1:find("\\telegram_testing\\", 1, true) or l_0_1:find("\\mitm_tools", 1, true) or l_0_1:find("\\wifibox", 1, true) or l_0_1:find("\\fake_ap", 1, true)) then
    (mp.set_mpattribute)("Lua:CookstoneA")
  end
  l_0_2 = (mp.enum_mpattributesubstring)("SCPT:CookstoneB")
  if #l_0_2 > 0 and (l_0_1:find("\\packages\\telegram\\", 1, true) or l_0_1:find("mitm_manager", 1, true) or l_0_1:find("\\core\\telegram_testing\\", 1, true)) then
    (mp.set_mpattribute)("Lua:CookstoneB")
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

