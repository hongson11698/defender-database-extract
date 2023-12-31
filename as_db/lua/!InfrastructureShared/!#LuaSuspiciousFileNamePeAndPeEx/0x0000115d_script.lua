-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSuspiciousFileNamePeAndPeEx\0x0000115d_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_0 ~= nil and l_0_0:len() > 10 and l_0_1 ~= nil then
    local l_0_2 = l_0_1:match("^([0-9a-f]+)")
    if l_0_2 == nil or (string.len)(l_0_2) < 32 or (string.find)(l_0_2, "[0-9]", 1) == nil or (string.find)(l_0_2, "[A-Fa-f]", 1) == nil then
      return mp.CLEAN
    end
    if l_0_1:find(".", 1, true) then
      if l_0_1:find(".svn-base", 1, true) then
        return mp.CLEAN
      end
      if l_0_0:find("\\appdata\\", 1, true) or l_0_0:find("\\programdata\\", 1, true) or l_0_0:find(".runbookworker.cloud.sandboxes\\", 1, true) or l_0_0:find("\\system recovery\\", 1, true) then
        return mp.CLEAN
      end
      ;
      (mp.set_mpattribute)("Lua:SuspiciousFileNamePeEx")
      ;
      (mp.set_mpattribute)("//Lua:SuspiciousFileNamePeExChild")
    else
      ;
      (mp.set_mpattribute)("Lua:SuspiciousFileNamePe")
      ;
      (mp.set_mpattribute)("//Lua:SuspiciousFileNamePeChild")
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

