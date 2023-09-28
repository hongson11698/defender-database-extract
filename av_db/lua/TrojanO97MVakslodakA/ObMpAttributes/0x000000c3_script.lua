-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\TrojanO97MVakslodakA\ObMpAttributes\0x000000c3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 16384 or l_0_0 > 65536 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.getfilename)())
if l_0_1 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, "\\xlstart\\office_.xls", 1, true) == nil then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = tostring((mp.readfooter)(0, 4096))
if l_0_2 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_2, "Module=Majoduck_SK_1", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

