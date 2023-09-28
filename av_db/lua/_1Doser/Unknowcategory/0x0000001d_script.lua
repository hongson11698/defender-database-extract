-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_1Doser\Unknowcategory\0x0000001d_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if epcode[1] ~= 232 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData <= 4182 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize <= 4182 then
  return mp.CLEAN
end
if epcode[4] ~= 0 then
  return mp.CLEAN
end
if epcode[5] ~= 0 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\232\000\000\000\000\189\n\000A\000÷ÝX\003\232\v"
l_0_1.xray_type = 13
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "\232\000\000\000\000\189\n\016@\000÷ÝX\003\232\v"
l_0_2.xray_type = 13
l_0_2.bytes_to_decrypt = 0
local l_0_3 = {}
l_0_3.sig = "\232\000\000\000\000½\n\016@\000÷ÝX\003\232"
l_0_3.xray_type = 13
l_0_3.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC61: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
l_0_3 = 3
local l_0_4 = -2
local l_0_5 = 0
do
  local l_0_6 = 2048
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC71: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

