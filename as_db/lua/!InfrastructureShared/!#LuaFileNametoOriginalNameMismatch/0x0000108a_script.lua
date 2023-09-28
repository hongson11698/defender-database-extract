-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileNametoOriginalNameMismatch\0x0000108a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.sub)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), 0, -5)
if l_0_0 == nil or #l_0_0 < 4 then
  return mp.CLEAN
end
local l_0_1 = {}
l_0_1[".bin"] = true
l_0_1[".cpl"] = true
l_0_1[".dat"] = true
l_0_1[".db"] = true
if l_0_1[l_0_0:sub(-3)] == true or l_0_1[l_0_0:sub(-4)] == true then
  return mp.CLEAN
end
local l_0_2 = (pe.get_versioninfo)()
if l_0_2 == nil or l_0_2.OriginalFilename == nil and l_0_2.InternalName == nil then
  return mp.INFECTED
end
local l_0_3, l_0_4 = nil, nil
if l_0_2.OriginalFilename ~= nil then
  l_0_3 = ((l_0_2.OriginalFilename):lower()):match("(.+)%.")
end
if l_0_2.InternalName ~= nil then
  l_0_4 = ((l_0_2.InternalName):lower()):match("(.+)%.")
end
if l_0_3 == nil or l_0_4 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0, l_0_3, 1, true) == nil or (string.find)(l_0_0, l_0_4, 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN

