-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007cb2_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections <= 4 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 1) ~= 5631 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 7) ~= 63617 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 9) ~= 65535 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "����\255\255����\255\255Q��$\244\255\255\199\000\000\000\000\000\232"
l_0_1.xray_type = 11
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC42: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = 2
local l_0_5 = 0
do
  local l_0_6 = 256
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC52: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

