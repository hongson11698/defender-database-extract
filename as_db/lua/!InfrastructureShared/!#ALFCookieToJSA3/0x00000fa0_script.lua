-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFCookieToJSA3\0x00000fa0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 8192 or l_0_0 > 1048576 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(1000, l_0_0 - 1001)
;
(mp.readprotection)(true)
if (string.find)(l_0_1, "console.log(\'cookies Set\', key, value, \'!IMPORTANT __Host- prefix: Cookies with names starting with __Host-", 1, true) ~= nil or (string.find)(l_0_1, "console.log(\'cookies Set\', key, value, \'!IMPORTANT __Secure- prefix: Cookies with names starting with __Secure-", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

