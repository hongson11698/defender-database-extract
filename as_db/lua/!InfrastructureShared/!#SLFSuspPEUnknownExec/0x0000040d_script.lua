-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFSuspPEUnknownExec\0x0000040d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 > 1048576 then
    return mp.CLEAN
  end
  local l_0_2, l_0_3 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_2:find("cache\\", 1, true) or l_0_3:find(".json", 1, true) or l_0_3:find(".pyd", 1, true) or l_0_3:find(".xml", 1, true) or l_0_3:find(".lng", 1, true) then
    return mp.CLEAN
  end
  if l_0_2:find("appdata", 1, true) or l_0_2:find("programdata", 1, true) or (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and (mp.GetMOTWZone)() >= 3 then
    -- DECOMPILER ERROR at PC146: Unhandled construct in 'MakeBoolean' P3

    -- DECOMPILER ERROR at PC146: Unhandled construct in 'MakeBoolean' P3

    -- DECOMPILER ERROR at PC146: Unhandled construct in 'MakeBoolean' P3

    -- DECOMPILER ERROR at PC146: Unhandled construct in 'MakeBoolean' P3

    if epcode[1] == 232 or ((epcode[1] == 85 and epcode[2] == 139) or epcode[1] ~= 75 or epcode[1] ~= 106 or epcode[3] ~= 85 or epcode[1] == 131) then
      return mp.CLEAN
    end
    if (pe.get_versioninfo)() ~= nil then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

