-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAO97MCVE201711882RUU\0x00000c93_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "websettings.xml.rels", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

