-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a40_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if ((string.match)(l_0_0, "\\amazon\\codedeploy\\bin") ~= nil and l_0_1 == "winagent.exe") or (string.match)(l_0_0, "\\spiceworks") ~= nil and l_0_1 == "spiceworks_safemode.exe" then
  return mp.CLEAN
end
return mp.INFECTED

