-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000061b2_luac 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
if (mp.getfilesize)() > 196418 then
  return mp.CLEAN
end
if not peattributes.dt_error_heur_exit_criteria then
  return mp.CLEAN
end
return mp.INFECTED

