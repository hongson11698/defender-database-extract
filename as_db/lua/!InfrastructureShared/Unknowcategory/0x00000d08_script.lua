-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d08_luac 

-- params : ...
-- function num : 0
if not (mp.istriggercloudyfriendlyscan)() then
  return mp.CLEAN
end
local l_0_0 = (mp.get_parent_filehandle)()
if not (mp.is_handle_nil)(l_0_0) then
  return mp.CLEAN
end
if not (mp.isfriendlyscan)() then
  return mp.CLEAN
end
if peattributes.msil_ngenimage then
  return mp.CLEAN
end
return mp.INFECTED

