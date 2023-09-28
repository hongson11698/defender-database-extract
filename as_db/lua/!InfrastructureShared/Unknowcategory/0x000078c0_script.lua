-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000078c0_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("VirTool:Win32/Vbcrypts") and (pe.query_import)(pe.IMPORT_STATIC, 1976129679) ~= 0 and (string.lower)((string.sub)(((pe.get_versioninfo)()).ProductName, 1, 5)) == "skype" then
  return mp.INFECTED
end
return mp.CLEAN

