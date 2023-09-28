-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000040ab_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:ExCheckInstalledAV") then
  return mp.CLEAN
end
return mp.INFECTED

