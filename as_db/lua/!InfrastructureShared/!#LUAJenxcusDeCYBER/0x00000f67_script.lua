-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAJenxcusDeCYBER\0x00000f67_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 2097152 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
if (string.match)(l_0_1, "^%%[0-9A-Za-z][0-9A-Za-z]%%[0-9A-Za-z][0-9A-Za-z]%%[0-9A-Za-z][0-9A-Za-z]") == nil then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(0, l_0_0)
if l_0_2 == nil then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)(fastHex2Bin(l_0_2, "%%([0-9A-Za-z][0-9A-Za-z])"), "[JenxcusDeHex]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

