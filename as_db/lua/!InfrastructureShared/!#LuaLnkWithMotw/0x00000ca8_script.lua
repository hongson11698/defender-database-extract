-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaLnkWithMotw\0x00000ca8_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and (mp.GetMOTWZone)() >= 3 then
  return mp.INFECTED
end
return mp.CLEAN

