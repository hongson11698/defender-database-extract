-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspiciousScriptFileNameSM181022\0x00000f8b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "calculation%d%d%d%d_oct18.html") ~= nil or (string.find)(l_0_0, "applicationreject_%d%d%d%d%d%(jan31%).one") ~= nil or (string.find)(l_0_0, "complaintcopy_%d%d%d%d%d%(feb01%).one") ~= nil or (string.find)(l_0_0, "azienda_%d%d.hta") ~= nil or (string.find)(l_0_0, "agenzia_%d%d.hta") ~= nil or (string.find)(l_0_0, "weeklyi%d%d%d%d+.js") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

