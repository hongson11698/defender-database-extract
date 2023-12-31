-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPowerShellRansomXorPES001\0x00001141_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 20480 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = tostring((mp.readfooter)(0, 4096))
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if (string.find)(l_0_1, "bxor", 1, true) == nil then
  return mp.CLEAN
end
local l_0_2 = (mp.readheader)(0, 4096)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = ""
for l_0_7 in (string.gmatch)(l_0_1, "bxor%s+(0x%x%x)") do
  if l_0_7 ~= nil and l_0_7 ~= "" then
    for l_0_11 in (string.gmatch)(l_0_2, "(0x%x%x)") do
      if l_0_11 ~= nil and l_0_11 ~= "" then
        l_0_3 = l_0_3 .. (string.char)((mp.bitxor)(l_0_11, l_0_7))
      end
    end
  end
end
if l_0_3 ~= nil and l_0_3 ~= "" then
  l_0_3 = (string.lower)(l_0_3)
  if (string.find)(l_0_3, "0x4d,0x5a,0x90,0x00,0x03,0x00,0x00,0x00,0x04,0x00,0x00,0x00,0xff,0xff", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:PEembedViaXOR.S001")
  end
end
local l_0_12 = ""
for l_0_16 in (string.gmatch)(l_0_1, "bxor%s+(%d?%d%d?)") do
  if l_0_16 ~= nil and l_0_16 ~= "" then
    for l_0_20 in (string.gmatch)(l_0_2, "(0x%x%x)") do
      if l_0_20 ~= nil and l_0_20 ~= "" then
        l_0_12 = l_0_12 .. (string.char)((mp.bitxor)(l_0_20, l_0_16))
      end
    end
  end
end
if l_0_12 ~= nil and l_0_12 ~= "" then
  l_0_12 = (string.lower)(l_0_12)
  if (string.find)(l_0_12, "0x4d,0x5a,0x90,0x00,0x03,0x00,0x00,0x00,0x04,0x00,0x00,0x00,0xff,0xff", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:PEembedViaXOR.S001")
  end
end
return mp.CLEAN

