-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELTrojanMacOSSamScissorsB\0x000012f9_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    local l_0_1 = (string.lower)((mp.getfilename)())
    if (string.find)(l_0_1, "/3cx desktop app/updateagent", 1, true) or (string.find)(l_0_1, "/3cx desktop app/.session-lock", 1, true) or (string.find)(l_0_1, "/3cx desktop app/.main_storage", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

