-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_AVulcano!epo\Unknowcategory\0x0000002b_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 6656 then
  return mp.CLEAN
end
if not (mp.bitand)(pehdr.MajorImageVersion, 1) == 0 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "`\232\000\000\000\000]µ\198\000\000\000½\244"
l_0_1.xray_type = 8
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "`\232\000\000\000\000]µ\198\000\000\000½\254"
l_0_2.xray_type = 8
l_0_2.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC45: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
local l_0_3 = 2
local l_0_4 = -1
local l_0_5 = 0
do
  local l_0_6 = 256
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC55: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

