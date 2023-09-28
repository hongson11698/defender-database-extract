-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Expirogen!LM\Unknowcategory\0x0000007e_luac 

-- params : ...
-- function num : 0
if not peattributes.lastscn_executable then
  return mp.CLEAN
end
if not peattributes.lastscn_writable then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 567296 then
  return mp.CLEAN
end
if peattributes.hasappendeddata then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\000kkqvx_64.dll\000\000\000"
l_0_1.xray_type = 11
l_0_1.bytes_to_decrypt = 16
-- DECOMPILER ERROR at PC36: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -1
local l_0_5 = -4864
do
  local l_0_6 = -1024
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC46: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

