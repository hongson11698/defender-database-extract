-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLuaSuspiciousFileAttachedToProc\0x00001062_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_0 ~= nil and l_0_0:len() > 10 and l_0_1 ~= nil and l_0_1:len() > 31 then
    if not l_0_0:find("\\users\\", 1, true) then
      return mp.CLEAN
    end
    local l_0_2 = l_0_1:match("^[%w]+")
    local l_0_3 = l_0_2:len()
    if l_0_2 == nil or l_0_3 < 31 or l_0_3 < l_0_1:len() - 7 then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("Lua:SuspFileInsideUser")
    if (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME) == nil then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

