-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_1Miam\Unknowcategory\0x0000001f_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if peattributes.lastscn_eqsizes == false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData <= 4000 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "‹Ââ\000\000\255\255BJf\129:MZuø‹Ê‹I<\003\202;\200\127íf\1299P"
l_0_1.xray_type = 0
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC29: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -1
local l_0_5 = -6000
do
  local l_0_6 = -3000
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC39: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

