-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Stepar!epo\Unknowcategory\0x0000000f_luac 

-- params : ...
-- function num : 0
if pehdr.Subsystem == 3 then
  return mp.CLEAN
end
if pehdr.SizeOfStackReserve < 65536 then
  return mp.CLEAN
end
if pehdr.SizeOfStackCommit < 65536 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (mp.bitand)((pesecs[pevars.epsec]).Characteristics, 536870912) ~= 536870912 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData <= 8192 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize <= 8192 then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if peattributes.packed ~= false then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\232\000\000\000\000]èè\003\000\000jEYµ\0064\000\000\232\f\004\000\000…\188\000\000\000T"
l_0_1.xray_type = 17
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "\232\000\000\000\000]èw\004\000\000jEYµ\1975\000\000è›\004\000\000…\188\000\000\000T"
l_0_2.xray_type = 17
l_0_2.bytes_to_decrypt = 0
local l_0_3 = {}
l_0_3.sig = "\232\000\000\000\000]èw\004\000\000jEYµ\1985\000\000è›\004\000\000…\188\000\000\000T"
l_0_3.xray_type = 17
l_0_3.bytes_to_decrypt = 0
local l_0_4 = {}
l_0_4.sig = "\232\000\000\000\000]\232-\004\000\000jEYµ\2125\000\000èQ\004\000\000…\188\000\000\000T"
l_0_4.xray_type = 17
l_0_4.bytes_to_decrypt = 0
local l_0_5 = {}
l_0_5.sig = "\232\000\000\000\000]èw\004\000\000jEYµ\0307\000\000è›\004\000\000…\188\000\000\000T"
l_0_5.xray_type = 17
l_0_5.bytes_to_decrypt = 0
local l_0_6 = {}
l_0_6.sig = "\232\000\000\000\000]èw\004\000\000jEYµ(7\000\000è›\004\000\000…\188\000\000\000T"
l_0_6.xray_type = 18
l_0_6.bytes_to_decrypt = 0
local l_0_7 = {}
l_0_7.sig = "\232\000\000\000\000]è¼\004\000\000jEYµ\1977\000\000èà\004\000\000…\188\000\000\000T"
l_0_7.xray_type = 17
l_0_7.bytes_to_decrypt = 0
local l_0_8 = {}
l_0_8.sig = "\232\000\000\000\000]è¼\004\000\000jEYµ\0309\000\000èà\004\000\000…\188\000\000\000T"
l_0_8.xray_type = 17
l_0_8.bytes_to_decrypt = 0
do
  local l_0_9 = {}
  l_0_9.sig = "\232\000\000\000\000]è¼\004\000\000jEYµ(9\000\000èà\004\000\000…\188\000\000\000T"
  l_0_9.xray_type = 18
  l_0_9.bytes_to_decrypt = 0
  -- DECOMPILER ERROR at PC115: No list found for R0 , SetList fails

  l_0_1 = pe
  l_0_1 = l_0_1.xray_block
  l_0_2 = l_0_0
  l_0_3 = 9
  l_0_4 = -1
  l_0_5 = -40960
  l_0_6 = -12288
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC125: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

