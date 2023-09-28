-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaLightNeuronPSS1\0x00000186_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or (string.len)(l_0_0) < 4 or (string.len)(l_0_0) > 1000 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:PSInServerSystemRoot.S01")
if l_0_0 == "msinp.ps1" then
  return mp.INFECTED
end
return mp.CLEAN

