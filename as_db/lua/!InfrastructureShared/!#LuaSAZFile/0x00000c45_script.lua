-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSAZFile\0x00000c45_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "%->raw/%d%d%d_s.txt") then
  (mp.set_mpattribute)("SCPT:Nemucod_exclusion")
end
return mp.CLEAN

