-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006d1e_luac 

-- params : ...
-- function num : 0
if (string.lower)((string.sub)(((pe.get_versioninfo)()).CompanyName, 1, 8)) == "viracure" then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  return mp.INFECTED
end
return mp.CLEAN

