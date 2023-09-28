-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32DarkBuzzOpera\0x00000dfb_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) then
    local l_0_0 = (mp.GetMOTWHostUrl)()
    if l_0_0 ~= nil and l_0_0:find("hiveaffi5ci2xxaz2fjfrfi5mwpqvuw4wtomc3fflzcvopxt2654ryqd.onion/", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

