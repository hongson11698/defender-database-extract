-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SCPTNemucod_exclusion\0x00000c42_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "%-%>%(pdf00[0-9][0-9]?%:") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

