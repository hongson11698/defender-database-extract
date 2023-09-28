-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Demmo3253\Unknowcategory\0x00000003_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if peattributes.lastscn_valign == false then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 39) ~= 27716 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 41) ~= 25185 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData <= 3253 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "œ`\232\000\000\000\000]‹|$$\185\005\000\000\000+ù‰|$$µ\164\f\000\000ó¤\141"
l_0_1.xray_type = 0
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC56: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -1
local l_0_5 = 0
do
  local l_0_6 = -1
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC66: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

