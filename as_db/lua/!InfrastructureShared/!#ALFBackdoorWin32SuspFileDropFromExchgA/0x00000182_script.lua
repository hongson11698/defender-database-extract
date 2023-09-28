-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFBackdoorWin32SuspFileDropFromExchgA\0x00000182_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("Lua:NewFileContextData:ProcName!w3wp.exe") then
  return mp.CLEAN
end
local l_0_0 = GetTacticsTableForPid("RTP")
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0.webshell_parent then
  return mp.INFECTED
end
return mp.CLEAN

