-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaIOAVSingleEXEZip\0x000010c4_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 1024 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 67324752 then
  return mp.CLEAN
end
local l_0_0 = (mp.readu_u32)(headerpage, 19)
if l_0_0 < 4096 or l_0_0 > 67108864 then
  return mp.CLEAN
end
local l_0_1 = (mp.readu_u16)(headerpage, 27)
local l_0_2 = (mp.readu_u16)(headerpage, 29)
if l_0_1 < 4 then
  return mp.CLEAN
end
local l_0_3 = (string.lower)((string.char)(headerpage[31 + l_0_1 - 4], headerpage[31 + l_0_1 - 3], headerpage[31 + l_0_1 - 2], headerpage[31 + l_0_1 - 1]))
if l_0_3 ~= ".exe" and l_0_3 ~= ".pif" and l_0_3 ~= ".scr" then
  return mp.CLEAN
end
local l_0_4 = 30 + l_0_1 + l_0_2 + l_0_0
local l_0_5 = (mp.getfilesize)()
if l_0_5 < l_0_4 + 16 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_6 = (mp.readfile)(l_0_4, 4)
if l_0_6 ~= "PK\003\004" then
  (mp.set_mpattribute)("Lua:IOAVSingleEXEZip")
  ;
  (mp.UfsSetMetadataBool)("Lua:UfsIOAVSingleEXEZip", true)
end
return mp.CLEAN

