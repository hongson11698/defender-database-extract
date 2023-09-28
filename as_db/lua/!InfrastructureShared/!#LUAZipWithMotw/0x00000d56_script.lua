-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAZipWithMotw\0x00000d56_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true then
    local l_0_1 = (mp.GetMOTWZone)()
    if l_0_1 and l_0_1 >= 3 then
      (mp.UfsSetMetadataBool)("LUA:ZipWithMotw", true)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

