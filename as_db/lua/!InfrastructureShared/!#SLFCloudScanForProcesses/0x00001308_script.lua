-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFCloudScanForProcesses\0x00001308_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if (string.find)(l_0_1, "/documents", 1, true) ~= nil or (string.find)(l_0_1, "/downloads", 1, true) ~= nil or (string.find)(l_0_1, "/tmp", 1, true) ~= nil then
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if (string.find)(l_0_2, "curl", 1, true) ~= nil or (string.find)(l_0_2, "wget", 1, true) ~= nil or (string.find)(l_0_2, "safari", 1, true) ~= nil or (string.find)(l_0_2, "unzip", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

