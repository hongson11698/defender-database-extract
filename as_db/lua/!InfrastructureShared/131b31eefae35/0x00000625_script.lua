-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\131b31eefae35\0x00000625_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1505.003", "Persistence_Webshell")
if (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
  TrackPidAndTechniqueBM("BM", "T1562.001", "DefenseEvasion_Impair")
  TrackPidAndTechniqueBM("BM", "T1489", "Impact_ServiceStop")
else
  if (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
    TrackPidAndTechniqueBM("BM", "T1003.008", "CredentialAccess")
  else
    if (this_sigattrlog[6]).matched then
      TrackPidAndTechniqueBM("BM", "T1033", "Discovery")
    else
      if (this_sigattrlog[7]).matched then
        TrackPidAndTechniqueBM("BM", "T1136.001", "Persistence_LocalAccount")
      end
    end
  end
end
return mp.INFECTED

