-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_1Zexam\Unknowcategory\0x0000000b_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if peattributes.lastscn_valign == false then
  return mp.CLEAN
end
if pehdr.MinorImageVersion ~= 100 then
  return mp.CLEAN
end
if pehdr.NumberOfSections == 0 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 262144 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize < 262144 then
  return mp.CLEAN
end
if pehdr.SizeOfCode < 262144 then
  return mp.CLEAN
end
if pehdr.SizeOfImage < 262144 then
  return mp.CLEAN
end
if (mp.bitand)(pehdr.Characteristics, 8192) == 8192 then
  return mp.CLEAN
end
if pehdr.SizeOfStackReserve < 4194304 then
  return mp.CLEAN
end
if pehdr.SizeOfHeapReserve < 4194304 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\000"
l_0_1.xray_type = 19
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC92: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -1
local l_0_5 = -262144
do
  local l_0_6 = -258048
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC102: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

