-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000079c2_luac 

-- params : ...
-- function num : 0
local l_0_0 = 512
local l_0_1 = (pe.mmap_va)(pevars.sigaddr - 256, l_0_0)
local l_0_2 = (string.find)(l_0_1, "JB\015%z")
if l_0_2 then
  (pe.mmap_patch_va)(pevars.sigaddr + 7, "��")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 16, "\235")
  ;
  (mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
  return mp.INFECTED
end
return mp.CLEAN

