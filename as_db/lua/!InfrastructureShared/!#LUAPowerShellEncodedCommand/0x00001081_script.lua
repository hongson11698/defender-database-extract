-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAPowerShellEncodedCommand\0x00001081_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 1280 or l_0_0 > 65536 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2, l_0_3, l_0_4 = (string.find)(l_0_1, "encodedcommand", 1, true)
if l_0_2 ~= nil then
  l_0_2 = (string.find)(l_0_1, "([%w/+=]+)", l_0_3 + 1)
  if l_0_2 ~= nil then
    (mp.set_mpattribute)("//MpBase64DecodeLongLines")
    ;
    (mp.set_mpattribute)("FromEncodedCommand")
    ;
    (mp.vfo_add_buffer)(l_0_4, "[PSEncodedCommand]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
-- DECOMPILER ERROR at PC59: Overwrote pending register: R3 in 'AssignReg'

l_0_2 = (string.find)(l_0_1, "%:%:FromBase64String%(%\'")
-- DECOMPILER ERROR at PC69: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC70: Overwrote pending register: R3 in 'AssignReg'

if l_0_2 ~= nil then
  l_0_2 = (string.find)(l_0_1, "([%w/+=]+)", l_0_3 + 1)
  if l_0_2 ~= nil then
    (mp.set_mpattribute)("//MpBase64DecodeLongLines")
    ;
    (mp.set_mpattribute)("FromBase64String")
    ;
    (mp.vfo_add_buffer)(l_0_4, "[PSBase64String]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
return mp.CLEAN

