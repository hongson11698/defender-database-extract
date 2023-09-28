-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFLuaPSAlternateDataStreamUsed\0x0000102f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
    local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
    if l_0_1:find("\\msft%.azure%.azure%-backup.-\\powershell%-module") or l_0_1:find("\\msft%.sme%.azure%-center.-\\powershell%-module") or l_0_1:find("\\sigma\\.+%.yml") then
      (mp.set_mpattribute)("Lua:AlterigoExclusion")
      return mp.CLEAN
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

