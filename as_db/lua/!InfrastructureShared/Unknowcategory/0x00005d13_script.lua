-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005d13_luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 21, 4), 1) > 40960 then
  return mp.INFECTED
end
return mp.CLEAN

