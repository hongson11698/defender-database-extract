-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPowEncCmd!file\0x00000f34_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 64 or l_0_0 > 65536 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2, l_0_3, l_0_4 = (string.find)(l_0_1, "-enc%a*%s+([%w+/]+=?=?)")
if not l_0_2 then
  l_0_2 = (string.find)(l_0_1, "[%-/]e.?c%a*%s+([%w+/]+=?=?)")
  if not l_0_2 then
    return mp.CLEAN
  end
end
;
(mp.vfo_add_buffer)((MpCommon.Base64Decode)(l_0_4), "[PowEncCmdFile]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

