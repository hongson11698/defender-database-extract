-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000756b_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections < 1 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\255Ѓ\236\b�D$\016@\000\000\000�D$\f\0000\000\000"
l_0_1.xray_type = 11
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC12: No list found for R0 , SetList fails

l_0_1 = pesecs
l_0_1 = l_0_1[1]
l_0_1 = l_0_1.SizeOfRawData
if l_0_1 >= 65536 then
  l_0_1 = mp
  l_0_1 = l_0_1.CLEAN
  return l_0_1
end
l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = 0
local l_0_5 = 0
do
  local l_0_6 = (pesecs[1]).SizeOfRawData
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC32: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

