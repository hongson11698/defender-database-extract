-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LnkLocations\0x0000113b_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
local l_0_2 = false
local l_0_3 = l_0_1:sub(-3)
local l_0_4 = "tmf|emf|wmf|spl|off|bak|m4a|mp4|mp3|wav|bmp|kgx|idx|etl|log|ico|sdd|dat"
if l_0_4:find(l_0_3) then
  l_0_2 = true
end
if l_0_0:find("\\office\\recent", 1, true) or l_0_0:find("\\windows\\recent", 1, true) or l_0_0:find("\\microsoft\\teams\\", 1, true) or l_0_0:find("\\windows\\cryptoguard", 1, true) or l_0_0:find("\\microsoft\\msip\\tokencache", 1, true) or l_0_0:find("\\carbonblack\\store", 1, true) or l_0_0:find("\\crowdstrike\\downloads", 1, true) or l_0_0:find("\\cyvera\\ransomware", 1, true) or l_0_0:find("\\outlook\\offline address books", 1, true) or l_0_0:find("\\slack\\service worker\\cachestorage", 1, true) or l_0_0:find("\\systemcertificates\\my\\certificates\\", 1, true) or l_0_0:find("\\temp\\photocache\\", 1, true) then
  l_0_2 = true
end
if l_0_2 then
  (mp.set_mpattribute)("Lua:LnkExclusions")
end
return mp.CLEAN

