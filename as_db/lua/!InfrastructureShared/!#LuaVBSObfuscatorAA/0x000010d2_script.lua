-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaVBSObfuscatorAA\0x000010d2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_parent_filehandle)()
if (mp.is_handle_nil)(l_0_0) then
  return mp.CLEAN
end
local l_0_1 = (mp.get_filesize_by_handle)(l_0_0)
if l_0_1 > 65536 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile_by_handle)(l_0_0, 0, l_0_1)
if l_0_2 == nil then
  return mp.CLEAN
end
l_0_2 = tostring(l_0_2)
local l_0_3 = (string.match)(l_0_2, "%z\r%z\n%zS%zT%z %z=%z %z\"%z(.-)\"%z\r%z\n")
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = (string.match)(l_0_2, "%z\r%z\n%zN%zN%z %z=%z %z\"(.-)%z\"%z\r%z\n")
if l_0_4 == nil then
  return mp.CLEAN
end
local l_0_5 = 0
for l_0_9 in l_0_4:gmatch("..") do
  l_0_5 = l_0_5 + (string.byte)(l_0_9, 1, 2) * 256 + l_0_9
end
local l_0_10 = ""
for l_0_14 in l_0_3:gmatch("..") do
  l_0_10 = l_0_10 .. (string.format)("%c", l_0_14 * 256 + (string.byte)(l_0_14, 1, 2) - (l_0_5) + (string.len)(l_0_4) / 2)
end
;
(mp.vfo_add_buffer)(l_0_10, "[Obfuscator.AA]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

