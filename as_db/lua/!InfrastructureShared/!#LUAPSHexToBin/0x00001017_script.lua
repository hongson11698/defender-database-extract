-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAPSHexToBin\0x00001017_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 8192 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(tostring(headerpage))
l_0_1 = (string.gsub)(l_0_1, " ", "")
local l_0_2 = ""
local l_0_3 = 0
for l_0_7 in (string.gmatch)(l_0_1, "%(?(0x[0-9A-Fa-f]+,0x[0-9A-Fa-f]+,0x[0-9A-Fa-f]+,.-)%)?;") do
  l_0_7 = (string.gsub)(l_0_7, "0x", "")
  l_0_7 = (string.gsub)(l_0_7, ",", "")
  l_0_2 = l_0_2 .. l_0_7
  l_0_3 = l_0_3 + 1
end
do
  if l_0_3 > 1 or (string.len)(l_0_2) > 256 then
    (mp.vfo_add_buffer)(fastHex2Bin(l_0_2, "([0-9A-Fa-f][0-9A-Fa-f])"), "[hextobin]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
  return mp.CLEAN
end

