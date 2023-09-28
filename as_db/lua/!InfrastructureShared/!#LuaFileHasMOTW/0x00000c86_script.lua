-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileHasMOTW\0x00000c86_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) then
    local l_0_0 = (mp.GetMOTWZone)()
    if l_0_0 == nil then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("Lua:MotwZone_" .. l_0_0)
    return mp.INFECTED
  end
  return mp.CLEAN
end

