-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFPERTrojanPythonCoreDriveA!dha\0x00000c0e_luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:CoreDriveA") > 3 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

