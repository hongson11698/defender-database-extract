-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000074df_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.readu_u32)((pe.mmap_va)((mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 2, 4), 1), 4), 1)
local l_0_1 = (pe.get_api_id)(l_0_0)
if l_0_1 ~= 3267971814 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 18, "��")
return mp.INFECTED

