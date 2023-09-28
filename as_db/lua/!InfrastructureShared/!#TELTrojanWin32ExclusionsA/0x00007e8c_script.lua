-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELTrojanWin32ExclusionsA\0x00007e8c_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["AGGR:PowerShell/ExclusionEnviromentalVariableAppdata"] = 2
l_0_0["AGGR:PowerShell/ExclusionExe"] = 2
l_0_0["AGGR:PowerShell/ExclusionDll"] = 2
l_0_0["AGGR:PowerShell/ExclusionBat"] = 2
l_0_0["AGGR:PowerShell/ExclusionEnviromentalVariableTemp"] = 2
l_0_0["AGGR:PowerShell/ExclusionEnviromentalVariableUserprofile"] = 2
l_0_0["AGGR:PowerShell/ExclusionAppDataRoaming"] = 2
local l_0_1 = 0
for l_0_5,l_0_6 in pairs(l_0_0) do
  if (mp.get_mpattribute)(l_0_5) then
    l_0_1 = l_0_1 + l_0_6
  end
end
if l_0_1 >= 10 then
  return mp.INFECTED
end
return mp.CLEAN

