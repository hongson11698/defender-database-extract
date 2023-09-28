-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUABase64InEmail\0x00001061_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 10000 or l_0_0 > 50000 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
if (string.match)(l_0_1, "Received: from.*%(HELO.*Message%-ID%:.*Content%-Type%:  multipart/x%-zip.*Content%-Transfer%-Encoding%: base64.*Content%-Disposition%: attachment") == nil then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("//LUA:Base64InEmail")
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(0, l_0_0)
local l_0_3, l_0_4, l_0_5 = (string.find)(l_0_2, "Content%-Type%:  multipart/x%-zip.*Content%-Transfer%-Encoding%: base64.*Content%-Disposition%: attachment\r\n\r\n(.*)\r\n\r\n%-%-%-%-boundary")
;
(mp.vfo_add_buffer)(l_0_5, "[MSG_Base64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

