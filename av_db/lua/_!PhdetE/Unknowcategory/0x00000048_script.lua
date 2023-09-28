-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!PhdetE\Unknowcategory\0x00000048_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).Characteristics ~= 3758096416 then
  return mp.CLEAN
end
if (mp.bitand)(epcode[1], 64) == 64 then
  return mp.CLEAN
end
if (mp.bitand)(epcode[1], 184) ~= 184 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if peattributes.firstsectwritable ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 2 then
  return mp.CLEAN
end
if pehdr.NumberOfSections >= 5 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "ess\000kernel32.dll\000VirtualFree\000U‰å`‹U\b…Òt\\\003U\fR‹z\016\1392\133\255tN…öu\002‰þ‹M\f\001\206\001Ï‹B\f\001È€8\000u\003@ëøP"
l_0_1.xray_type = 3
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC77: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = 0
local l_0_5 = 512
do
  local l_0_6 = 768
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC87: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

