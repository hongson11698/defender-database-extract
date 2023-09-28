-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00004918_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
local l_0_1 = "/tmp"
if l_0_0:find(l_0_1, 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

