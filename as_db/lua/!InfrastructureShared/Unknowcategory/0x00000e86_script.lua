-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000e86_luac 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "regkeyvalue" then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0, "hklm\\system\\currentcontrolset\\services", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(tostring(headerpage))
if (string.find)(l_0_1, "rpcsrv.dat", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED

