-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_ANemucodTSR\ObMpAttributes\0x00000085_luac 

-- params : ...
-- function num : 0
if (string.len)((mp.getfilename)()) < 10 then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "%d+%.zip%->%d+%.js") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

