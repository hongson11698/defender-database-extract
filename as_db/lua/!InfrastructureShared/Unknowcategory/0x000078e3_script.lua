-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000078e3_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("Lua:XMLExt") then
    local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    if l_0_0:find("abusepreventionengineconfig.xml", 1, true) then
      (mp.set_mpattribute)("MpNonPIIFileType")
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

