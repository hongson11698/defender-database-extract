-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006159_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpHasValidProjPath") and (mp.get_mpattribute)("pea_hasappendeddata") and peattributes.isexe then
  return mp.LOWFI
end
return mp.CLEAN
