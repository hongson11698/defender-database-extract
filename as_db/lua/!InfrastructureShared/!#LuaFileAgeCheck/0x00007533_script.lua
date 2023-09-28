-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileAgeCheck\0x00007533_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILE_AGE)
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0 < 86400 then
  (mp.set_mpattribute)("Lua:FileCreatedLT1d")
end
if l_0_0 < 604800 then
  (mp.set_mpattribute)("Lua:FileCreatedLT7d")
else
  ;
  (mp.set_mpattribute)("Lua:FileCreatedGT7d")
end
return mp.CLEAN

