-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\BackdoorASPExchgWebA\ObMpAttributes\0x000000e5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
if (string.match)(l_0_0, "\\microsoft\\exchange server\\v%d%d\\frontend\\") ~= nil or (string.find)(l_0_0, "\\frontend\\httpproxy\\owa\\", 1, true) ~= nil or (string.match)(l_0_0, "\\microsoft\\exchange server\\v%d%d\\clientaccess\\") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

