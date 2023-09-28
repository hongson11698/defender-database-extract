-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008076_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("undecimus", 1, true) then
  return mp.CLEAN
end
if l_0_0:find(".deb", 1, true) then
  return mp.CLEAN
end
if l_0_0:find(".app", 1, true) then
  return mp.CLEAN
end
if l_0_0:find(".iso", 1, true) then
  return mp.CLEAN
end
if l_0_0:find(".ipa", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("drfone", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("checkn", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("data.tar.xz", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("program files", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("programdata", 1, true) then
  return mp.CLEAN
end
if l_0_0:find(".exe", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("just4fun", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

