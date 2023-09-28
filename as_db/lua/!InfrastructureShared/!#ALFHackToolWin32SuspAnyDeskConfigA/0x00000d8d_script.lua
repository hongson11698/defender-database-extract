-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFHackToolWin32SuspAnyDeskConfigA\0x00000d8d_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("SCPT:SuspAnyDeskConfig.A") then
    local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    if l_0_0 ~= nil and l_0_0:find("system.conf", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

