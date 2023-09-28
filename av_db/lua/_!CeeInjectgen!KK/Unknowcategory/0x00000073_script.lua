-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!CeeInjectgen!KK\Unknowcategory\0x00000073_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 4096 or (mp.getfilesize)() > 5242880 then
  return mp.CLEAN
end
if peattributes.packed == true then
  return mp.CLEAN
end
if peattributes.packersigmatched == true then
  return mp.CLEAN
end
if peattributes.epinfirstsect == false then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 1 then
  return mp.CLEAN
end
if pehdr.Subsystem ~= 3 then
  return mp.CLEAN
end
if pehdr.TimeDateStamp ~= 0 then
  return mp.CLEAN
end
if pehdr.SizeOfCode ~= 4 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 1634891822 then
  return mp.CLEAN
end
if (pesecs[1]).Characteristics ~= 3758096608 then
  return mp.CLEAN
end
if epcode[1] ~= 195 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "h†W\r\000hˆN\r\000\232\026\000\000\000‰Eühú‹4\000h"
l_0_1.xray_type = 4
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "h\000\000\000\134\000\000\000W\000\000\000\r\000\000\000\000\000\000\000h\000\000\000\136\000\000\000N\000\000\000"
l_0_2.xray_type = 4
l_0_2.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC94: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
local l_0_3 = 2
local l_0_4 = -1
local l_0_5 = 0
do
  local l_0_6 = -1
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC104: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

