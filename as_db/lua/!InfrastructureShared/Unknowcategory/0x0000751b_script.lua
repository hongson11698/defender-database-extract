-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000751b_luac 

-- params : ...
-- function num : 0
if ((mp.get_mpattribute)("HSTR:NSIS_Installer") or (mp.get_mpattribute)("HSTR:NSIS.gen!A")) and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA == 0 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).Size == 0 then
  return mp.INFECTED
end
return mp.CLEAN

