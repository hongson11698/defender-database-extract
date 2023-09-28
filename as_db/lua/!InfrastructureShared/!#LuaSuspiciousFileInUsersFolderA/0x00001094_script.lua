-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSuspiciousFileInUsersFolderA\0x00001094_luac 

-- params : ...
-- function num : 0
if not peattributes.isexe and not peattributes.isdll then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if l_0_0 == nil or #l_0_0 < 9 or l_0_0:find("\\users\\", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.ContextualExpandEnvironmentVariables)("%userprofile%")
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if #l_0_1 < 9 then
  return mp.CLEAN
end
if (string.sub)(l_0_0, 0, 4) == "\\\\?\\" then
  l_0_0 = (string.sub)(l_0_0, 5)
end
if l_0_0 == l_0_1 then
  if peattributes.isdll then
    (mp.set_mpattribute)("Lua:SuspiciousFileInUsersFolder.A!dll")
  else
    if peattributes.isexe then
      (mp.set_mpattribute)("Lua:SuspiciousFileInUsersFolder.A!exe")
    end
  end
  return mp.INFECTED
end
return mp.CLEAN

