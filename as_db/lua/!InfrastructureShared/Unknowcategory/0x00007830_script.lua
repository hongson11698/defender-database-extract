-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007830_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 64)
local l_0_1 = (string.find)(l_0_0, "a�}", 1, true)
if l_0_1 ~= nil then
  (pe.mmap_patch_va)(pevars.sigaddr + l_0_1 + 7, "��")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + l_0_1 + 16, "��")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + l_0_1 + 22, "��")
  return mp.INFECTED
end
return mp.LOWFI

