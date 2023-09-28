-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Legacy!epo\Unknowcategory\0x0000002d_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if peattributes.no_relocs == false then
  return mp.CLEAN
end
if pehdr.Win32VersionValue ~= 1497581388 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData <= 12000 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize <= 12000 then
  return mp.CLEAN
end
if pehdr.Machine ~= 332 then
  return mp.CLEAN
end
if peattributes.epscn_islast ~= false then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\232\000\000\000\000]‹Åí\194\024@\000-\153\b\000\000-"
l_0_1.xray_type = 1
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "\232\000\000\000\000]‹Åí\194\024@\000-\153\b\000\000-"
l_0_2.xray_type = 1
l_0_2.bytes_to_decrypt = 0
local l_0_3 = {}
l_0_3.sig = "\232\000\000\000\000]‹Åí\194\bA\000-\153\b\000\000-"
l_0_3.xray_type = 1
l_0_3.bytes_to_decrypt = 0
local l_0_4 = {}
l_0_4.sig = "\232\000\000\000\000]‹Åí\142\024@\000-e\b\000\000-"
l_0_4.xray_type = 1
l_0_4.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC72: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
l_0_3 = 4
l_0_4 = -1
local l_0_5 = -16384
do
  local l_0_6 = -8192
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC82: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

