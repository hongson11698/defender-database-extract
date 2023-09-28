-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Idele!epo1\Unknowcategory\0x0000002a_luac 

-- params : ...
-- function num : 0
if doshdr.e_csum ~= 18772 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 2560 then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW == 1633964078 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\232\000\000\000\000]í\161\016@\000‹D$ "
l_0_1.xray_type = 1
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC39: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -1
local l_0_5 = -2560
do
  local l_0_6 = -1536
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC49: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

