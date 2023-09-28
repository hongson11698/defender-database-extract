-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAZipWithMotwAll\0x00000c98_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true then
    local l_0_0 = (mp.GetMOTWZone)()
    if l_0_0 and l_0_0 >= 3 then
      (mp.UfsSetMetadataBool)("LUA:ZipWithMotwAll", true)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

