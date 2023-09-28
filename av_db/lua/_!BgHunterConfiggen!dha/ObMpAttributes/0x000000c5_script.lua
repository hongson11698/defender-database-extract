-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!BgHunterConfiggen!dha\ObMpAttributes\0x000000c5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= "a.help" and l_0_0 ~= "shashigeiing.help" then
  return mp.CLEAN
end
local l_0_1 = "çÑ\n™©©©\137"
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(150268, 8)
;
(mp.readprotection)(true)
if l_0_2 == l_0_1 then
  return mp.INFECTED
end
return mp.CLEAN

