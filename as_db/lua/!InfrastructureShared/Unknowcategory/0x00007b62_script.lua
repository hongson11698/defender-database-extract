-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b62_luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)(epcode, 1) ~= 1610613227 or (mp.readu_u32)(epcode, 5) ~= 673477691 or pehdr.Subsystem ~= 1 then
  return mp.LOWFI
end
local l_0_0 = pehdr.ImageBase + (pesecs[1]).VirtualAddress
local l_0_1 = (pe.mmap_va)(l_0_0, 4)
if (string.sub)(l_0_1, 1, 4) == "(re)" then
  (mp.changedetectionname)(805306430)
end
return mp.INFECTED

