-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\bcb321ff4b34\0x000014a7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = l_0_1.command_line
local l_0_3, l_0_4, l_0_5, l_0_6 = nil, nil, nil, nil
l_0_4 = (this_sigattrlog[5]).utf8p1
l_0_5 = l_0_1.ppid
local l_0_7 = {}
-- DECOMPILER ERROR at PC15: No list found for R7 , SetList fails

-- DECOMPILER ERROR at PC16: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC17: Overwrote pending register: R9 in 'AssignReg'

for l_0_11,l_0_12 in ("/curl")("/wget") do
  if l_0_0:sub(-#l_0_12) == l_0_12 then
    return mp.CLEAN
  end
end
local l_0_13 = "user-agent"
local l_0_14, l_0_15 = pcall(MpCommon.RollingQueueQueryKey, l_0_13, l_0_5)
if l_0_14 and next(l_0_15) then
  l_0_6 = l_0_15.value
end
if l_0_6 ~= nil and (string.find)(l_0_2, l_0_6, 1, true) then
  taint(l_0_4, "remote_file_created_taint", 3600)
  AppendToRollingQueue("queue_pid_taintfactory_a", l_0_5, 1, 600)
  l_0_3 = (bm.get_process_relationships)()
  for l_0_19,l_0_20 in ipairs(l_0_3) do
    if (mp.bitand)(l_0_20.reason_ex, 1) == 1 then
      (bm.add_related_file)(l_0_20.image_path)
      ;
      (bm.add_related_process)(l_0_20.ppid)
      TrackPidAndTechniqueBM(l_0_20.ppid, "T1036.003", "DefenseEvasion")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

