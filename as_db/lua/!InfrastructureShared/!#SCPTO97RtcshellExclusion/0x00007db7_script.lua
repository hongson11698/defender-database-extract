-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SCPTO97RtcshellExclusion\0x00007db7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_AMSI then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_1:find("msaccess.exe", 1, true) then
    return mp.INFECTED
  end
  local l_0_2, l_0_3 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
  if l_0_2 and l_0_3 ~= nil then
    local l_0_4 = (string.lower)(l_0_3)
    if (string.find)(l_0_4, ".accdb", -6, true) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

