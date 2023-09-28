-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAUnknownExeExtInRTF\0x00000cc2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 400000 or l_0_0 > 1000000 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_1, "%-%>%(rtf[0-9]+%)%-%>[a-z]+.exe$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

