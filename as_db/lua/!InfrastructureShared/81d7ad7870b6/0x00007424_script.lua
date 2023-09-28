-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\81d7ad7870b6\0x00007424_luac 

-- params : ...
-- function num : 0
TrackPidAndTechnique("CMDHSTR", "T1562.001", "wmic_def_excl")
if (hstrlog[1]).matched then
  set_research_data("wmic_method", "add", false)
else
  set_research_data("wmic_method", "set", false)
end
return mp.INFECTED

