-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!MTX!epo\Unknowcategory\0x00000036_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 9245 then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "œ`\233\000\000\000\000¾\001\004‹þ¹\001\002\000\000ü­\144\001\015«âíë\004\144\000"
l_0_1.xray_type = 9
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "dg\2556\000\000dg\137&\000\000‹H<‹T\b4;ÂuÚ‹\234\003\193\005\128\000\000\000"
l_0_2.xray_type = 0
l_0_2.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC33: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
local l_0_3 = 2
local l_0_4 = -1
local l_0_5 = -10000
do
  local l_0_6 = -6000
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC43: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

