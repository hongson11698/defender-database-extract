-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000dbb_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if (string.find)(l_0_0, "\\spoon\\sandbox\\", 1, true) ~= nil or (string.find)(l_0_0, "\\xenocode\\sandbox\\", 1, true) ~= nil or (string.find)(l_0_0, "\\local\\stubexe\\", 1, true) ~= nil then
  (mp.set_mpattribute)("LUA:SpoonVmPath")
end
return mp.CLEAN

