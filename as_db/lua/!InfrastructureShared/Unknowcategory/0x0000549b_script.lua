-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000549b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_regval)(pe.REG_EDI) - 262148
if l_0_0 == 7749888 then
  (pe.mmap_patch_va)(l_0_0, "h\000Az\000\195")
end
return mp.INFECTED

