-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFSuspRc4EncByRundll\0x000001d7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_0 ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "rundll32.exe" then
  return mp.INFECTED
end
return mp.CLEAN

