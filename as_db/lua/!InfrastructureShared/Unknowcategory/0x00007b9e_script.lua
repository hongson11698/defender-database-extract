-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b9e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 7, 4)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
l_0_0 = (pe.mmap_va)(l_0_1, 4)
l_0_1 = (mp.readu_u32)(l_0_0, 1)
local l_0_2 = (pe.get_api_id)(l_0_1)
if (pe.query_import)(pe.IMPORT_STATIC, 1753664949) and (pe.query_import)(pe.IMPORT_STATIC, 4207106400) and l_0_2 == 3141119381 then
  (mp.set_mpattribute)("FOP:VirTool:Win32/Obfuscator.Fareit")
end
return mp.LOWFI

