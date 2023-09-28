-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaLuaGPOBlocker\0x00000191_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if not l_0_0 or not (l_0_0:lower()):find("svchost", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)()
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (l_0_1:lower()):match("^\\device\\mup\\.+\\sysvol\\.+\\policies\\{(%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x)}\\gpt.ini$")
if not l_0_2 then
  return mp.CLEAN
end
local l_0_3 = tostring(headerpage)
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4 = l_0_3:match("Version%s*=%s*(%d+)")
if not l_0_4 then
  (mp.set_mpattribute)("Lua:GptIniMissingVersion")
  return mp.INFECTED
end
if pcall(MpCommon.RollingQueueQueryKey, "gpo_block", l_0_2) and MpCommon.RollingQueueQueryKey then
  return mp.INFECTED
end
local l_0_6 = nil
local l_0_5 = R6_PC90
if l_0_6 and l_0_5.value == l_0_4 then
  return mp.CLEAN
end
local l_0_7 = tonumber(l_0_4)
;
(mp.set_mpattributeex)("Lua:GPOVersion", l_0_7)
;
(mp.set_mpattribute)("Lua:GPOBlockerFilter")
return mp.CLEAN

