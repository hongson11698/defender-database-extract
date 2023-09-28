-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Babylonia!epo\Unknowcategory\0x00000024_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if (mp.bitand)((pesecs[1]).Characteristics, 3758096416) ~= 3758096416 then
  return mp.CLEAN
end
if (mp.bitand)((pesecs[pehdr.NumberOfSections]).Characteristics, 3221225536) ~= 3221225536 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 11036 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\200 \000\000QS‹]\f\128\251!t\b\128\251$t\003\128\251%é"
l_0_1.xray_type = 0
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC48: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -1
local l_0_5 = 0
do
  local l_0_6 = -1
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC58: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

