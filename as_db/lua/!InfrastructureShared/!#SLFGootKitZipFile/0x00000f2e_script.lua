-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFGootKitZipFile\0x00000f2e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil then
  return mp.CLEAN
end
if not (string.match)(l_0_0, "[%w%_]+_%d+.zip%-%>[%w%s]+%s%d+.js") then
  return mp.CLEAN
end
local l_0_1 = split(l_0_0, "-%>")
local l_0_2 = (string.gsub)(l_0_1[1], "_", " ")
l_0_2 = (string.gsub)(l_0_2, "%d+.zip", "")
local l_0_3 = (string.gsub)(l_0_1[2], "%d+.js", "")
if l_0_2 ~= nil and l_0_3 ~= nil and l_0_2 == l_0_3 then
  return mp.INFECTED
end
return mp.CLEAN

