-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000806c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 32)
local l_0_1 = (string.byte)(l_0_0, 26) + (string.byte)(l_0_0, 27) * 256 + (string.byte)(l_0_0, 28) * 65536 + (string.byte)(l_0_0, 29) * 16777216
local l_0_2 = pevars.sigaddr + 29 + l_0_1
l_0_0 = (pe.mmap_va)(l_0_2 - 4, 32)
local l_0_3 = (string.byte)(l_0_0, 1) + (string.byte)(l_0_0, 2) * 256 + (string.byte)(l_0_0, 3) * 65536 + (string.byte)(l_0_0, 4) * 16777216
local l_0_4 = (mp.bitand)(l_0_2 + l_0_3, 4294967295)
if l_0_4 ~= pevars.sigaddr then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC106: Unhandled construct in 'MakeBoolean' P3

if (pehdr.SizeOfImage >= 503808 and pehdr.SizeOfImage <= 573440) or pehdr.SizeOfImage < 409600 or pehdr.SizeOfImage >= 868352 and pehdr.SizeOfImage <= 888832 then
  return mp.INFECTED
end
;
(mp.changedetectionname)(805306375)
return mp.SUSPICIOUS

