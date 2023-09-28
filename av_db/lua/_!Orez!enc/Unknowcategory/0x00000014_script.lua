-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Orez!enc\Unknowcategory\0x00000014_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if peattributes.no_relocs == false then
  return mp.CLEAN
end
if peattributes.packed ~= false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 6900 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize < 6900 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\014\000\002\000\024\000$\000\002\000 \000p\000\002\000H\000\204\002\002\000\164\000\192\000\002\000\168\000\160\003\002\000\224\000\228\000\003\000P\001\216\001\020\003\003\000T\001\220\001\024\003\003\000X\001\224\001\028\003\002\000\140\001\016\003\003\000\128\002\236\002\248\002\002\000\156\002\232\002\002\000,\0030\003\002\000\152\003\220\003"
l_0_1.xray_type = 14
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "\016\000\002\000 \000p\000\002\000H\000\216\002\002\000\164\000\192\000\002\000\168\000\172\003\002\000\224\000\228\000\003\000P\001\216\001 \003\003\000T\001\220\001$\003\003\000X\001\224\001(\003\002\000\140\001\028\003\002\000\132\002\240\004\003\000\140\002\248\002\004\003\002\000\168\002\244\002\002\0008\003<\003\002\000\164\003\232\003\003\000\172\004\196\004\208\004\002\000X\005h\005"
l_0_2.xray_type = 14
l_0_2.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC57: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
local l_0_3 = 2
local l_0_4 = -1
local l_0_5 = 0
do
  local l_0_6 = -1
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC67: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

