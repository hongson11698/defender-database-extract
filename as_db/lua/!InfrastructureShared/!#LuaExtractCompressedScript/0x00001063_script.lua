-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaExtractCompressedScript\0x00001063_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 200000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
;
(mp.readprotection)(true)
l_0_1 = (string.gsub)(l_0_1, "%z", "")
local l_0_2 = l_0_1:gmatch("[%w+/]+=?=?")
for l_0_6 in l_0_2 do
  if #l_0_6 > 80 then
    if (mp.get_mpattribute)("SCPT:PowerShell.InvokeObfuscation.Decompress") then
      (mp.vfo_add_buffer)("CWSHACK\000X\133" .. (MpCommon.Base64Decode)(l_0_6), "[PwsZlib]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    else
      ;
      (mp.vfo_add_buffer)("CWSHACK\000" .. (MpCommon.Base64Decode)(l_0_6), "[PwsZlib]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    end
  end
end
return mp.CLEAN

