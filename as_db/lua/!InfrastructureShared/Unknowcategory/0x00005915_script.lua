-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005915_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((mp.getfilename)()):lower()
if (string.find)(l_0_0, ":\\users\\", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

