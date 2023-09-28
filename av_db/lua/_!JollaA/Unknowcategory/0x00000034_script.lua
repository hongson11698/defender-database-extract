-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!JollaA\Unknowcategory\0x00000034_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 1 then
  return mp.CLEAN
end
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData <= 262144 then
  return mp.CLEAN
end
local l_0_0 = (pesecs[pevars.epsec]).VirtualSize - (pesecs[pevars.epsec]).SizeOfRawData
if l_0_0 ~= 0 then
  return mp.CLEAN
end
local l_0_1 = {}
local l_0_2 = {}
l_0_2.sig = "[Sf3Ûf\129;ZMt\015f\129;MZt\bë\000\016\000\000ëç\232+\000\000\000GetProcAdd"
l_0_2.xray_type = 4
l_0_2.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC54: No list found for R1 , SetList fails

l_0_2 = pe
l_0_2 = l_0_2.xray_block
local l_0_3 = l_0_1
local l_0_4 = 1
local l_0_5 = 0
local l_0_6 = 0
do
  local l_0_7 = -1
  do return l_0_2(l_0_3, l_0_4, l_0_5, l_0_6, l_0_7) end
  -- DECOMPILER ERROR at PC64: Confused about usage of register R3 for local variables in 'ReleaseLocals'

end

