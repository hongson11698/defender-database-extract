-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005793_luac 

-- params : ...
-- function num : 0
if (mp.IsTrustedFile)(false) == true or (mp.IsKnownFriendlyFile)((mp.getfilename)(), true, true) == true then
  return mp.CLEAN
end
return mp.INFECTED

