-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFPSb64WriteFileC\0x00000513_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 5000000 then
  (mp.readprotection)(false)
  local l_0_1 = ((mp.readfile)(0, l_0_0))
  local l_0_2, l_0_3, l_0_4 = nil, nil, nil
  local l_0_5 = 1
  l_0_2 = (string.find)(l_0_1, "%:%:FromBase64String%(")
  -- DECOMPILER ERROR at PC32: Overwrote pending register: R3 in 'AssignReg'

  if l_0_2 ~= nil then
    l_0_2 = (string.find)(l_0_1, "([%w/+=]+)", l_0_3 + 1)
    if l_0_2 ~= nil then
      local l_0_6 = nil
      l_0_6 = (MpCommon.Base64Decode)(l_0_4)
      if l_0_6 ~= nil and l_0_6 ~= "" then
        (mp.vfo_add_buffer)(l_0_6, (string.format)("[PSBase64][%02X]", l_0_5), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        l_0_5 = l_0_5 + 1
      end
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

