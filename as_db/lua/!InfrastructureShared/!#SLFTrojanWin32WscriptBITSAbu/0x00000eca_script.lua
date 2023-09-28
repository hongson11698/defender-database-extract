-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanWin32WscriptBITSAbu\0x00000eca_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 == nil or (string.lower)(l_0_0) ~= "nsservice.exe" then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)()
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (string.match)(l_0_1, "(%.[^%.]+)$")
if l_0_2 == nil then
  return mp.CLEAN
end
if (string.lower)(l_0_2) ~= ".vbs" then
  return mp.CLEAN
end
return mp.INFECTED

