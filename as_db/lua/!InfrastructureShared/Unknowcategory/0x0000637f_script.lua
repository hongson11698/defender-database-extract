-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000637f_luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (pe.mmap_va)(pevars.sigaddr - 4, 4)
if (mp.readu_u32)(l_0_0, 1) < 2097152 then
  return mp.CLEAN
end
return mp.INFECTED

