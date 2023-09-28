-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUARTFPossibleMalformedR\0x00000c81_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 9000 or l_0_0 > 1000000 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
if (string.match)(l_0_1, "^{\\rtf1\\") == nil then
  return mp.INFECTED
end
return mp.CLEAN

