-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000074a3_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PEBMPAT:VirTool:Win32/Obfuscator.XT") then
  (mp.set_mpattribute)("lua_codepatch_obfuscator_xt_1")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 17, "\235 ")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 49, "\235")
end
return mp.CLEAN

