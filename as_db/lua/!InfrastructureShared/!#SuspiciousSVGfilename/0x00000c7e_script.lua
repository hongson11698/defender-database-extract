-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SuspiciousSVGfilename\0x00000c7e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "%.jpg%.svg") ~= nil or (string.find)(l_0_0, "%d%d%d%d%d%d%d%d%d%d%d%-%(%d%d%)%.svg") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

