-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1a3b3367a6ba8\0x0000062c_luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
if (bm.get_current_process_startup_info)() == nil or ((bm.get_current_process_startup_info)()).ppid == nil or ((bm.get_current_process_startup_info)()).command_line == nil then
  return mp.CLEAN
end
if isParentPackageManager(((bm.get_current_process_startup_info)()).ppid, true) then
  return mp.CLEAN
end
if (this_sigattrlog[7]).matched then
  l_0_1 = (this_sigattrlog[7]).utf8p1
else
  if (this_sigattrlog[8]).matched then
    l_0_1 = (this_sigattrlog[8]).utf8p1
  else
    if (this_sigattrlog[9]).matched then
      l_0_1 = (this_sigattrlog[9]).utf8p1
    else
      if (this_sigattrlog[10]).matched then
        l_0_1 = (this_sigattrlog[10]).utf8p1
      else
        return mp.CLEAN
      end
    end
  end
end
if l_0_1 ~= nil then
  (bm.add_related_file)(l_0_1)
  ;
  (mp.ReportLowfi)(l_0_1, 1690978323)
end
TrackPidAndTechniqueBM("BM", "T1574", "DefenseEvasion_HijackExecutionFlow_WWDSuspiciousModuleDrop")
return mp.INFECTED

