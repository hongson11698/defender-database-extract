-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ShellCypt\0x00000ed3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 15000 then
  return mp.CLEAN
end
if l_0_0 > 500000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, 768)
local l_0_2, l_0_3 = (string.find)(l_0_1, "{ string .*= \"")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_4 = (mp.readfile)(l_0_3, (mp.getfilesize)() - l_0_3)
;
(mp.set_mpattribute)("//MpBase64DecodeLongLines")
;
(mp.vfo_add_buffer)(l_0_4, "[ShellCypt]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

