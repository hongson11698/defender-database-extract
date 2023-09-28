-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\53b36aa81b7e\0x000012e7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[2]).utf8p2
if (string.find)(l_0_0, "activate", 1, true) then
  TrackPidAndTechniqueBM("BM", "T1548.004", "PrivilegeEscalation-CredentialPopupWithinApp")
else
  TrackPidAndTechniqueBM("BM", "T1548.004", "PrivilegeEscalation-CredentialPopup")
end
return mp.INFECTED

