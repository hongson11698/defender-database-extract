-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Bolzano!epo\Unknowcategory\0x00000030_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if pehdr.Machine < 332 then
  return mp.CLEAN
end
if pehdr.Machine > 335 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 2600 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize < 2600 then
  return mp.CLEAN
end
if not (mp.bitand)((pesecs[pehdr.NumberOfSections]).SizeOfRawData, 15) == 0 then
  return mp.CLEAN
end
if not (mp.bitand)((pesecs[pehdr.NumberOfSections]).VirtualSize, 15) == 0 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "�H\n\000\000\003��\197\f\000\000\003��\n\000\000\000󥋝p\n\000\000f\199\003`\184"
l_0_1.xray_type = 0
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "�X\t\000\000��\v\000\000\003��\200\016\000"
l_0_2.xray_type = 1
l_0_2.bytes_to_decrypt = 0
local l_0_3 = {}
l_0_3.sig = "�B\t\000\000�{\v\000\000\003��\180\016\000"
l_0_3.xray_type = 1
l_0_3.bytes_to_decrypt = 0
local l_0_4 = {}
l_0_4.sig = "�c\n\000\000\1909\r\000\000\003��\004\018\000"
l_0_4.xray_type = 1
l_0_4.bytes_to_decrypt = 0
local l_0_5 = {}
l_0_5.sig = "�\t\000\000��\v\000\000\003��\252\016\000"
l_0_5.xray_type = 1
l_0_5.bytes_to_decrypt = 0
local l_0_6 = {}
l_0_6.sig = "\232\006\n\000\000��\f\000\000\003��\176\018\000"
l_0_6.xray_type = 1
l_0_6.bytes_to_decrypt = 0
local l_0_7 = {}
l_0_7.sig = "��\a\000\000\1909\n\000\000\003��\185\f\000"
l_0_7.xray_type = 0
l_0_7.bytes_to_decrypt = 0
local l_0_8 = {}
l_0_8.sig = "�\a\000\000\190\005\n\000\000\003��\r\r\000"
l_0_8.xray_type = 0
l_0_8.bytes_to_decrypt = 0
local l_0_9 = {}
l_0_9.sig = "\232-\t\000\000�f\v\000\000\003��\160\016\000"
l_0_9.xray_type = 1
l_0_9.bytes_to_decrypt = 0
local l_0_10 = {}
l_0_10.sig = "\2326\014\000\000\191\000\f\001\000\185\000\001\000\0003��u\f��\016\000\000\191\000\000�w\235"
l_0_10.xray_type = 2
l_0_10.bytes_to_decrypt = 0
local l_0_11 = {}
l_0_11.sig = "\2328\014\000\000\191\000\f\001\000\185\000\001\000\0003��u\f��\016\000\000\191\000\000�w\235"
l_0_11.xray_type = 2
l_0_11.bytes_to_decrypt = 0
local l_0_12 = {}
l_0_12.sig = "��\014\000\000\191\000\f\001\000\185\000\001\000\0003��u\f\190-\017\000\000\191\000\000�w\235"
l_0_12.xray_type = 2
l_0_12.bytes_to_decrypt = 0
do
  local l_0_13 = {}
  l_0_13.sig = "�i\t\000\000��\v\000\000\003��\216\016\000\000\003��,\000\000\000�󥋽V\f\000"
  l_0_13.xray_type = 2
  l_0_13.bytes_to_decrypt = 0
  -- DECOMPILER ERROR at PC124: No list found for R0 , SetList fails

  l_0_1 = pe
  l_0_1 = l_0_1.xray_block
  l_0_2 = l_0_0
  l_0_3 = 13
  l_0_4 = -1
  l_0_5 = -8192
  l_0_6 = -4096
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC134: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

