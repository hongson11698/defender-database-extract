-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_APrizzy!epo\Unknowcategory\0x0000002c_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if peattributes.epscn_islast == false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 12960 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize < 12960 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "_ƒÇ\024\139\015‰\1613\000\000‹O\004‰\1653\000\000f«f¯´î‰\a\006\030\015"
l_0_1.xray_type = 8
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC39: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -2
local l_0_5 = -13024
do
  local l_0_6 = -12512
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC49: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

