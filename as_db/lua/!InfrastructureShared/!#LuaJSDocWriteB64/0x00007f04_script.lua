-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaJSDocWriteB64\0x00007f04_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 == nil or l_0_0 < 500 then
  return mp.CLEAN
end
local l_0_1 = 1048576
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(0, math_min(l_0_0, l_0_1))
;
(mp.readprotection)(true)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (string.match)(l_0_2, "atob%(%s*[\"\']([A-Za-z0-9+%/=]+)")
if #l_0_3 > 500 then
  (mp.vfo_add_buffer)((MpCommon.Base64Decode)(l_0_3), "[DocWrite.B64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  ;
  (mp.set_mpattribute)("//NScript:JSEnableEmulation")
  return mp.INFECTED
end
return mp.CLEAN

