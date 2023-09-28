-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFPERHackToolPythonGoalPackA!d\0x00007425_luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:GoalPackD1") == 1 and #(mp.enum_mpattributesubstring)("SCPT:GoalPackA") >= 2 and #(mp.enum_mpattributesubstring)("SCPT:GoalPackB") > 3 then
  return mp.INFECTED
end
return mp.CLEAN

