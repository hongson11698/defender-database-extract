-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFPERTrojanWin32WlbsctrlHijackA!dha\0x00000e63_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
do
  if l_0_0 < 300000 then
    local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
    if l_0_1:find("\\system32\\wlbsctrl", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

