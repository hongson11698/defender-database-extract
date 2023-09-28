-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Hiv!epo\Unknowcategory\0x00000026_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if headerpage[41] ~= 231 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData <= 16384 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize <= 16384 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "Öè2\022\000\000‰…\200\t\000\000èG\018\000"
l_0_1.xray_type = 1
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "Öè/\022\000\000‰…\195\t\000\000èB\018\000"
l_0_2.xray_type = 1
l_0_2.bytes_to_decrypt = 0
local l_0_3 = {}
l_0_3.sig = "Öè\135\023\000\000‰…\191\n\000\000è™\019\000"
l_0_3.xray_type = 1
l_0_3.bytes_to_decrypt = 0
local l_0_4 = {}
l_0_4.sig = "Öè;\022\000\000‰…\200\t\000\000èG\018\000"
l_0_4.xray_type = 1
l_0_4.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC51: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
l_0_3 = 4
l_0_4 = -1
local l_0_5 = 0
do
  local l_0_6 = -1
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC61: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

