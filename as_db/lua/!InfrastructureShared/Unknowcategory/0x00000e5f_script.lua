-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000e5f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == "ewsapplication.exe" then
  return mp.INFECTED
end
if (string.match)(l_0_0, "o365token%d?%d?%d?%d?%.exe") then
  return mp.INFECTED
end
if (string.match)(l_0_0, "hpatoken%d?%d?%d?%d?%.exe") then
  return mp.INFECTED
end
if (string.match)(l_0_0, "hpauser%d?%d?%d?%.exe") then
  return mp.INFECTED
end
return mp.CLEAN

