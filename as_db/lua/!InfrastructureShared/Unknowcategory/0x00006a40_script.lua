-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006a40_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_regval)(pe.REG_EBP) - 328
local l_0_1 = (pe.mmap_va)(l_0_0, 4)
local l_0_2 = (mp.readu_u32)(l_0_1, 1)
if l_0_2 ~= 268675836 then
  (mp.set_mpattribute)("PEBMPAT:AntiEmuCheckConstantMemAdd")
end
return mp.CLEAN

