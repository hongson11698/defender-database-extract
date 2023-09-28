-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextISOFile\0x00001132_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilesize)()
local l_0_2 = 16777216
if l_0_1 < 33792 or l_0_2 < l_0_1 then
  return mp.CLEAN
end
if (mp.bitand)(l_0_1, 2047) ~= 0 then
  return mp.CLEAN
end
local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
local l_0_4 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_4:len() < 4 then
  return mp.CLEAN
end
if (string.sub)(l_0_4, -4) ~= ".iso" and (string.sub)(l_0_4, -4) ~= ".img" then
  return mp.CLEAN
end
local l_0_5 = ""
if l_0_3:find("\\downloads", 1, true) ~= nil then
  l_0_5 = "Downloads"
else
  if l_0_3:find("\\temp\\temp[0-9]_.+%.zip$") ~= nil then
    l_0_5 = "ZipTemp"
  else
    return mp.CLEAN
  end
end
;
(mp.readprotection)(false)
local l_0_6 = (mp.readfile)(32768, 16)
if l_0_6:find("\001CD001\001", 1, true) == 1 then
  (mp.set_mpattribute)("Lua:ContextISOFile" .. l_0_5)
else
  if l_0_6:find("\000BEA01\001", 1, true) == 1 then
    (mp.set_mpattribute)("Lua:ContextUDFFile" .. l_0_5)
  end
end
return mp.CLEAN

