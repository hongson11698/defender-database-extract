-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspExtExeWithMotw\0x00000f69_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and (mp.GetMOTWZone)() >= 3 then
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 <= 4194304 then
    local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    local l_0_2 = l_0_1:sub(-4)
    local l_0_3 = l_0_1:sub(-11)
    local l_0_4 = {}
    l_0_4[".exe"] = true
    l_0_4[".dll"] = true
    l_0_4[".msi"] = true
    l_0_4[".sys"] = true
    l_0_4[".quarantine"] = true
    if l_0_4[l_0_2] == true or l_0_4[l_0_3] == true then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("LUA:SuspExtExeWithMotw.A")
  end
end
do
  return mp.CLEAN
end

