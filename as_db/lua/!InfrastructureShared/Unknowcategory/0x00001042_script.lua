-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001042_luac 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if l_0_1 ~= nil and l_0_1 ~= "" then
  l_0_1 = (MpCommon.PathToWin32Path)(l_0_1)
  if l_0_1 ~= nil and l_0_1 ~= "" and (sysio.IsFileExists)(l_0_1) then
    l_0_1 = (string.lower)(l_0_1)
    l_0_0 = true
  end
end
if l_0_0 == false then
  l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_1 ~= nil and l_0_1 ~= "" then
    l_0_1 = (MpCommon.PathToWin32Path)(l_0_1)
    if l_0_1 ~= nil and l_0_1 ~= "" and (sysio.IsFileExists)(l_0_1) then
      l_0_0 = true
    end
  end
end
if l_0_0 then
  if (string.find)(l_0_1, "^.:\\windows\\ccmcache\\") then
    return mp.CLEAN
  end
  local l_0_2 = (string.match)(l_0_1, "^.:\\(program files[^\\]*)\\tanium\\tanium client\\")
  if l_0_2 == "program files" then
    return mp.CLEAN
  end
  if l_0_2 == "program files (x86)" then
    return mp.CLEAN
  end
end
do
  return mp.INFECTED
end

