-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Fosforo!epo\Unknowcategory\0x00000031_luac 

-- params : ...
-- function num : 0
if doshdr.e_csum ~= 85 then
  return mp.CLEAN
end
if pehdr.ImageBase ~= 4194304 then
  return mp.CLEAN
end
if (mp.getfilesize)() >= 409600 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 7000 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize < 7000 then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 3 then
  return mp.CLEAN
end
if pehdr.SizeOfImage < 7000 then
  return mp.CLEAN
end
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\232\000\000\000\000]í\005 @\000½\0280@\000OMEMt"
l_0_1.xray_type = 4
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "\232\000\000\000\000]í\005 @\000½H.@\000OMEMt<"
l_0_2.xray_type = 4
l_0_2.bytes_to_decrypt = 0
local l_0_3 = {}
l_0_3.sig = "\232\000\000\000\000]í\005 @\000½\217.@\000OMEMt<"
l_0_3.xray_type = 4
l_0_3.bytes_to_decrypt = 0
local l_0_4 = {}
l_0_4.sig = "\232\000\000\000\000]í\005 @\000½\231.@\000OMEMt<"
l_0_4.xray_type = 4
l_0_4.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC80: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
l_0_3 = 4
l_0_4 = -1
local l_0_5 = -12288
do
  local l_0_6 = -128
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC90: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

