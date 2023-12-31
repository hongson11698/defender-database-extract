-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000010e3_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
  local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  if l_0_0:sub(1, 8) == "\\device\\" then
    l_0_0 = (MpCommon.PathToWin32Path)(l_0_0)
    if l_0_0 == nil then
      return mp.CLEAN
    end
    l_0_0 = (string.lower)(l_0_0)
  end
  local l_0_1 = false
  local l_0_2 = {}
  l_0_2.SuspExeFileDroppedBySystemProcessC_sysdir = "Lua:Context/OpenExeAfterDropBySystem.C!sysdir"
  l_0_2.SuspFileDroppedBySystemProcessC_sysdir = "Lua:Context/OpenAfterDropBySystem.C!sysdir"
  l_0_2.SuspExeFileDroppedBySystemProcessC_windir = "Lua:Context/OpenExeAfterDropBySystem.C!windir"
  l_0_2.SuspFileDroppedBySystemProcessC_windir = "Lua:Context/OpenAfterDropBySystem.C!windir"
  for l_0_6,l_0_7 in pairs(l_0_2) do
    if (MpCommon.QueryPersistContext)(l_0_0, l_0_6) then
      (mp.set_mpattribute)(l_0_7)
      l_0_1 = true
    end
  end
  if l_0_1 == true then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

