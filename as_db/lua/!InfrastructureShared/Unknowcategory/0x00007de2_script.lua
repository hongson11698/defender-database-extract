-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007de2_luac 

-- params : ...
-- function num : 0
local l_0_0 = pehdr.ImageBase + (pesecs[1]).VirtualAddress
local l_0_1 = (pe.mmap_va)(l_0_0, 4)
if (string.sub)(l_0_1, 1, 4) == "(re)" then
  (mp.changedetectionname)(805306418)
end
if (mp.readu_u32)(epcode, 1) == 1374456661 and (mp.readu_u32)(epcode, 5) == 3898037843 and (mp.readu_u32)(epcode, 13) == 4278738315 and (mp.readu_u32)(epcode, 17) == 1703089267 and (mp.readu_u16)(epcode, 21) == 252 then
  (mp.changedetectionname)(805306418)
end
return mp.INFECTED

