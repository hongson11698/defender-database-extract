-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanPowerShellNugetAttackD\0x00000f8e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
if l_0_0:find("\\tools\\", 1, true) and l_0_1:find(l_0_1, "init.ps1", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

