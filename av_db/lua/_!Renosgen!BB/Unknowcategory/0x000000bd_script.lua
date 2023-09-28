-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Renosgen!BB\Unknowcategory\0x000000bd_luac 

-- params : ...
-- function num : 0
if peattributes.packed ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[12]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[12]).Size ~= 0 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\\\\.\\SIWVIDSTART\000"
l_0_1.xray_type = 4
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "UnhandledExcepti"
l_0_2.xray_type = 4
l_0_2.bytes_to_decrypt = 0
local l_0_3 = {}
l_0_3.sig = "ABCDEFGHIJKLMNOP"
l_0_3.xray_type = 4
l_0_3.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC56: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
l_0_3 = 3
local l_0_4 = 2
local l_0_5 = 0
do
  local l_0_6 = 4096
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC66: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

