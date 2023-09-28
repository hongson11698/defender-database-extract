-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanWin32WscriptBITSAbu\0x00000e54_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.match)(l_0_0, "(%.[^%.]+)$") ~= ".vbs" then
  return mp.CLEAN
end
if (string.match)(l_0_0, "\\appdata\\roaming\\2019....\\........%.vbs") == nil then
  return mp.CLEAN
end
return mp.INFECTED

