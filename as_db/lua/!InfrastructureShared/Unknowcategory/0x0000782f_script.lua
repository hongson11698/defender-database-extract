-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000782f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 64)
local l_0_1 = (string.find)(l_0_0, "�U\248", 1, true)
if l_0_1 ~= nil then
  (pe.mmap_patch_va)(pevars.sigaddr + l_0_1 + 9, "��")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + l_0_1 + 18, "��")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + l_0_1 + 24, "��")
  return mp.INFECTED
end
return mp.LOWFI

