-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Greemo2208\Unknowcategory\0x00000007_luac 

-- params : ...
-- function num : 0
if pehdr.PointerToSymbolTable ~= 1229739332 then
  return mp.CLEAN
end
if peattributes.lastscn_eqsizes == false then
  return mp.CLEAN
end
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 2048 then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "`j Zd\139\002…Àt\bj\255Xd\137\002‹à\232\006\000\000\000‹d$\b\235\0253Òd\2552d\137\"\244\255\226"
l_0_1.xray_type = 0
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC43: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -1
local l_0_5 = -2816
do
  local l_0_6 = -2304
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC53: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

