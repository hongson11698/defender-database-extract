-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000616e_luac 

-- params : ...
-- function num : 0
if ((pe.get_versioninfo)()).OriginalFilename == "riched32.dll" and ((pe.get_versioninfo)()).CompanyName == "Microsoft Corporation" then
  return mp.INFECTED
end
return mp.CLEAN

