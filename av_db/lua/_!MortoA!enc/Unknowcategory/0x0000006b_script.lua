-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!MortoA!enc\Unknowcategory\0x0000006b_luac 

-- params : ...
-- function num : 0
if peattributes.executble_image == false then
  return mp.CLEAN
end
if peattributes.epscn_islast == false then
  return mp.CLEAN
end
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 7) ~= 767591256 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 13) ~= 2165836939 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "ÇE\252\001\000\000\000\232\000\000\000\000X‰Eü‹EüƒÀð"
l_0_1.xray_type = 3
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC46: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -1
do
  local l_0_7 = pehdr.AddressOfEntryPoint
  l_0_7 = l_0_7 - (pesecs[pehdr.NumberOfSections]).VirtualAddress
  local l_0_5 = nil
  l_0_5 = -1
  local l_0_6 = nil
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_7, l_0_5) end
  -- DECOMPILER ERROR at PC63: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

