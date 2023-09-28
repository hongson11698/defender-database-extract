-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaWin32ShellCodeBM\0x00000ff2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 102400 then
  return mp.CLEAN
end
local l_0_1 = nil
if l_0_0 <= mp.HEADERPAGE_SZ then
  l_0_1 = tostring(headerpage)
else
  ;
  (mp.readprotection)(false)
  l_0_1 = tostring((mp.readfile)(0, l_0_0))
end
local l_0_2 = (string.gmatch)(l_0_1, "var_shellcode%s*=%s*\"(4d5a%x+)\"")
local l_0_3 = 0
for l_0_7 in l_0_2 do
  if l_0_7 ~= nil and l_0_7 ~= "" then
    (mp.vfo_add_buffer)(fastHex2Bin(l_0_7, "[0-9A-Fa-f][0-9A-Fa-f]"), (string.format)("[Hexify][%02X]", l_0_3), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    l_0_3 = l_0_3 + 1
  end
end
if l_0_3 > 0 then
  return mp.INFECTED
end
return mp.CLEAN

