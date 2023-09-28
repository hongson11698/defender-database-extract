-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!PSTWebShellA\ObMpAttributes\0x000000c8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 282624 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
local l_0_2 = (string.sub)(l_0_1, -4)
if l_0_2 ~= nil and l_0_2 == ".pst" then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_3 = (mp.readfile)(20480, 65536)
local l_0_4 = (string.lower)(tostring(l_0_3))
if (string.find)(l_0_4, "script language=", 1, true) == nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, "eval(request", 1, true) ~= nil and (string.find)(l_0_4, "unsafe", 1, true) ~= nil and ((string.find)(l_0_4, "cmd", 1, true) ~= nil or (string.find)(l_0_4, "exec_code", 1, true) ~= nil) then
  if l_0_0 == 271360 then
    return mp.INFECTED
  else
    return mp.LOWFI
  end
end
return mp.CLEAN

