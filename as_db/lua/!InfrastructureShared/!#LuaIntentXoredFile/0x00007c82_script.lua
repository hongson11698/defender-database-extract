-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaIntentXoredFile\0x00007c82_luac 

-- params : ...
-- function num : 0
local l_0_0 = 256
local l_0_1 = tostring((pesecs[3]).Name)
if l_0_1 ~= ".data" then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)((pesecs[3]).PointerToRawData, l_0_0)
;
(mp.readprotection)(true)
for l_0_6 = 1, l_0_0, 8 do
  local l_0_7 = (mp.readu_u32)(l_0_2, l_0_6)
  local l_0_8 = (mp.readu_u32)(l_0_2, l_0_6 + 4)
  if (mp.bitxor)(l_0_7, l_0_8) == 9460302 and l_0_7 ~= 10115661 then
    return mp.INFECTED
  end
end
return mp.CLEAN

