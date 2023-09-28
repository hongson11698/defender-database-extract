-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_1Sentinel\Unknowcategory\0x0000001c_luac 

-- params : ...
-- function num : 0
if (mp.readu_u16)(headerpage, 57) ~= 27756 then
  return mp.CLEAN
end
if (mp.bitand)((pesecs[pehdr.NumberOfSections]).Characteristics, 2684354592) ~= 2684354592 then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if peattributes.lastscn_valign == false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData <= 10240 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "U\232\000\000\000\000]í\" @\000…^ @\000Pdg\2556\000\000dg\137&\000\000"
l_0_1.xray_type = 1
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC53: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -1
local l_0_5 = -10240
do
  local l_0_6 = -9216
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC63: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

