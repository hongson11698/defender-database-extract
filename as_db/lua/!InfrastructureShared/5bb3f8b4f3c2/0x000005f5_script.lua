-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb3f8b4f3c2\0x000005f5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil and l_0_0.ppid == nil then
  return mp.CLEAN
end
if not isParentPackageManager(l_0_0.ppid, true) and IsDetectionThresholdMetLinux(l_0_0.ppid) then
  AddResearchData("BM", true)
  reportRelatedBmHits()
  addRelatedProcess()
  return mp.INFECTED
end
return mp.CLEAN

