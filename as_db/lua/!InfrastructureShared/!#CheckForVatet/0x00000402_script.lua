-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#CheckForVatet\0x00000402_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["c:\\windows\\inf"] = "inf"
l_0_0["c:\\windows\\help"] = "help"
l_0_0["c:\\windows\\debug"] = "debug"
l_0_0["c:\\windows\\media"] = "media"
local l_0_1 = ((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)):lower()
if l_0_1 ~= nil and #l_0_1 > 8 then
  if l_0_1:sub(1, 8) == "\\device\\" then
    l_0_1 = ((MpCommon.PathToWin32Path)(l_0_1)):lower()
  end
  local l_0_2 = l_0_0[l_0_1]
  if l_0_0[l_0_1] ~= nil then
    local l_0_3 = "FileDropBySuspectedVatet_"
    local l_0_4 = "Lua:Context/SuspectedVatet!"
    local l_0_5 = l_0_3 .. l_0_2
    local l_0_6 = l_0_4 .. l_0_2
    local l_0_7 = (MpCommon.QueryPersistContext)(l_0_1, l_0_5)
    if not l_0_7 then
      (MpCommon.AppendPersistContext)(l_0_1, l_0_5, 1000)
    end
    ;
    (mp.set_mpattribute)(l_0_6)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

