-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000078bd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.GetProcessCommandLine)(l_0_0))
if l_0_1 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, "sdelete", 1, true) or (string.find)(l_0_1, "procdump", 1, true) or (string.find)(l_0_1, "psshutdown", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

