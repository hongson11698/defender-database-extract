-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000074f5_luac 

-- params : ...
-- function num : 0
local l_0_1 = (string.find)((pe.mmap_va)(pevars.sigaddr, 128), "IÅ˘", 1, true)
do
  if l_0_1 == nil then
    local l_0_0 = 7
    l_0_0 = 4
  end
  -- DECOMPILER ERROR at PC29: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC35: Confused about usage of register: R1 in 'UnsetPending'

  ;
  (pe.mmap_patch_va)(pevars.sigaddr + l_0_1 + l_0_0, "êê")
  return mp.INFECTED
end

