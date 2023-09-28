-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Neverdie!epo\Unknowcategory\0x00000025_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if peattributes.lastscn_vfalign == false then
  return mp.CLEAN
end
if peattributes.lastscn_eqsizes == false then
  return mp.CLEAN
end
if (mp.bitand)((pesecs[1]).Characteristics, 2147483648) == 0 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\232\000\000\000\000]ÅÌ\005\016@\000çµ\'\023@\000çΩ0\023@\000\185\b\000\000\000êÛ\164"
l_0_1.xray_type = 0
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "\232\'\000\000\000ãÖF\023@\0001Ö’\023@\000\235&êêêË\017\000\000\000ãÖJ\023@"
l_0_2.xray_type = 0
l_0_2.bytes_to_decrypt = 0
local l_0_3 = {}
l_0_3.sig = "\232\v\000\000\000ãd$\bËY\000\000\000ÎB3€d\2553d\137#R\015\001L$˛Z\131"
l_0_3.xray_type = 1
l_0_3.bytes_to_decrypt = 0
local l_0_4 = {}
l_0_4.sig = "\232\v\000\000\000ãd$\bËZ\000\000\000ÎB3€d\2553d\137#R\015\001L$˛Z\131"
l_0_4.xray_type = 1
l_0_4.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC57: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
l_0_3 = 4
l_0_4 = -1
local l_0_5 = -4096
do
  local l_0_6 = -256
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC67: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

