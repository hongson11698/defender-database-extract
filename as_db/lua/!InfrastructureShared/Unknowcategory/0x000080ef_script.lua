-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080ef_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0.integrity_level == MpCommon.SECURITY_MANDATORY_SYSTEM_RID or l_0_0.integrity_level == MpCommon.SECURITY_MANDATORY_PROTECTED_PROCESS_RID then
  return mp.CLEAN
end
local l_0_1, l_0_2 = nil, nil
if (this_sigattrlog[1]).matched then
  l_0_1 = (this_sigattrlog[1]).timestamp
end
if (this_sigattrlog[2]).matched then
  l_0_1 = (this_sigattrlog[2]).timestamp
end
if (this_sigattrlog[3]).matched then
  l_0_1 = (this_sigattrlog[3]).timestamp
end
if (this_sigattrlog[4]).matched then
  l_0_2 = (this_sigattrlog[4]).timestamp
end
if l_0_2 < l_0_1 or l_0_0.ppid == nil or (string.find)(l_0_0.ppid, "pid:4$", 1, false) ~= nil or (string.find)(l_0_0.ppid, "pid:4,", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_3 = (MpCommon.GetProcessElevationAndIntegrityLevel)((this_sigattrlog[4]).ppid)
if l_0_0.integrity_level == MpCommon.SECURITY_MANDATORY_MEDIUM_RID and l_0_3.IntegrityLevel == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.INFECTED
end
if l_0_0.integrity_level == MpCommon.SECURITY_MANDATORY_HIGH_RID and l_0_3.IntegrityLevel == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.INFECTED
end
return mp.CLEAN

