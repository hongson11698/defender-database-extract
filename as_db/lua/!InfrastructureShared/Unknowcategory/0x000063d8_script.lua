-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063d8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 9, 3)
if (string.byte)(l_0_0, 1) + 119 == (string.byte)(l_0_0, 3) then
  return mp.INFECTED
end
return mp.CLEAN

