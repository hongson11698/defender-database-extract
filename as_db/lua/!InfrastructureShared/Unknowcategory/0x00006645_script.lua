-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006645_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpHasExpensiveLoop") then
  return mp.INFECTED
end
if peattributes.dt_error_heur_exit_criteria then
  return mp.INFECTED
end
if (mp.get_mpattribute)("MpHasValidProjPath") then
  return mp.INFECTED
end
return mp.CLEAN

