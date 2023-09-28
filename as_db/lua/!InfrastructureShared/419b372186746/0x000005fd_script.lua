-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\419b372186746\0x000005fd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  if isParentPackageManager(l_0_0.ppid, true) then
    return mp.CLEAN
  end
  if IsDetectionThresholdMetLinuxWrapper(l_0_0.ppid) or IsDiscoveryCollectionThresholdMetLinux(l_0_0.ppid) then
    addRelatedProcess()
    reportRelatedBmHits()
    return mp.INFECTED
  end
end
return mp.CLEAN

