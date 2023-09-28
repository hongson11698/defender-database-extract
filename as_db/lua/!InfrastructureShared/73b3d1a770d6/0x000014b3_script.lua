-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\73b3d1a770d6\0x000014b3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil or l_0_0.ppid == nil then
  return mp.CLEAN
end
if isParentPackageManager(l_0_0.ppid, true) then
  return mp.CLEAN
end
local l_0_1 = nil
local l_0_2 = 0
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil and (this_sigattrlog[3]).np2 ~= nil then
  l_0_1 = (this_sigattrlog[3]).utf8p1
  l_0_2 = (this_sigattrlog[3]).np2
end
if l_0_1 == nil or l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = tonumber(tostring(l_0_2), 8)
local l_0_4, l_0_5, l_0_6, l_0_7 = (mp.bsplit)(l_0_3, 3)
if l_0_4 == 0 and l_0_5 == 0 and l_0_6 == 0 and l_0_7 == 0 then
  return mp.CLEAN
end
local l_0_8 = (bm.get_imagepath)()
if l_0_8 == nil then
  return mp.CLEAN
end
local l_0_9 = "BM"
if (string.find)(l_0_8, "/chmod", -6, true) then
  l_0_9 = l_0_0.ppid
end
local l_0_10 = false
if (mp.bitand)(l_0_4, 1) == 1 or (mp.bitand)(l_0_5, 1) == 1 or (mp.bitand)(l_0_6, 1) == 1 then
  if l_0_9 == "BM" then
    (bm.trigger_sig)("ChmodToExec", l_0_1)
  else
    ;
    (bm.trigger_sig)("ChmodToExec", l_0_1, l_0_9)
  end
  TrackPidAndTechniqueBM(l_0_9, "T1222", "DefenseEvasion_PermissionModification_ChmodToExec")
  l_0_10 = true
end
if (mp.bitand)(l_0_7, 2) == 2 or (mp.bitand)(l_0_7, 4) == 4 then
  if l_0_9 == "BM" then
    (bm.trigger_sig)("UidGidChange", l_0_1)
  else
    ;
    (bm.trigger_sig)("UidGidChange", l_0_1, l_0_9)
  end
  TrackPidAndTechniqueBM(l_0_9, "T1548.001", "PrivilegeEscalation_AbuseElevationControlMechanism_SetuidSetgid")
  l_0_10 = true
end
if l_0_10 == false then
  return mp.CLEAN
end
;
(bm.add_related_file)(l_0_1)
addRelatedProcess()
return mp.INFECTED

