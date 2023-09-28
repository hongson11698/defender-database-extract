-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1c9b37b2cb13e\0x0000138b_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1003.008", "CredentialAccess")
addRelatedProcess()
if IsAncestorTaintedScriptOrBin(true) then
  return mp.INFECTED
end
return mp.CLEAN

