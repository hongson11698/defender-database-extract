-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007874_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 2, 4)
local l_0_1 = (string.byte)(l_0_0, 1) + (string.byte)(l_0_0, 2) * 256 + (string.byte)(l_0_0, 3) * 65536 + (string.byte)(l_0_0, 4) * 16777216
if (pe.mmap_va)(l_0_1, 7) == "%x.exe\000" then
  return mp.INFECTED
end
return mp.CLEAN

