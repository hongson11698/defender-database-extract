-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007517_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("lua_codepatch_urausy_lod") then
  return mp.CLEAN
end
local l_0_0 = (mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 23, 4), 1)
if l_0_0 >= 131072 then
  (pe.mmap_patch_va)(pevars.sigaddr + 23, "\000\000\000\000")
end
return mp.INFECTED

