-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFHackToolWin32IoTSuiteC!dha\0x00000669_luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:IoTSuiteVDL") >= 5 or #(mp.enum_mpattributesubstring)("SCPT:IoTSuiteFDL") >= 7 then
  return mp.INFECTED
end
return mp.CLEAN

