-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32DarkBuzzSvcC\0x00000df3_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) then
    local l_0_0 = (mp.GetMOTWHostUrl)()
    if l_0_0 ~= nil and l_0_0:find("hiveapi5qsnctp7rkmgrd3nrk64o5u6vdbc2ua4aevl2r6yc3j7kd4yd.onion/", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

