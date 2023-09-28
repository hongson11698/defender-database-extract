-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d05_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_2 == nil or l_0_1 == nil then
  return mp.CLEAN
end
if l_0_1:find("\\temp\\", 1, true) ~= nil and l_0_2:find("^awh[0-9a-f][0-9a-f][0-9a-f]?[0-9a-f]?%.tmp$") == 1 then
  return mp.INFECTED
end
return mp.CLEAN

