-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_KK321012\Unknowcategory\0x00000020_luac 

-- params : ...
-- function num : 0
if pehdr.Win32VersionValue ~= 47806 then
  return mp.CLEAN
end
if (mp.getfilesize)() <= 1012 then
  return mp.CLEAN
end
if pehdr.NumberOfSections == 0 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\128|$\003\191\015\1333\001\000\000`\232\000\000\000\000]í/\016@\000"
l_0_1.xray_type = 0
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC27: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -3
local l_0_5 = -1012
do
  local l_0_6 = -512
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC37: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

