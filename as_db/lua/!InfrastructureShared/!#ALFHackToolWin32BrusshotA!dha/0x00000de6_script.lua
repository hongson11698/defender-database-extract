-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFHackToolWin32BrusshotA!dha\0x00000de6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("\\htmlsmuggling\\lnkbuilder", 1, true) or l_0_0:find("\\htmlsmuggling\\htmlsmuggling", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

