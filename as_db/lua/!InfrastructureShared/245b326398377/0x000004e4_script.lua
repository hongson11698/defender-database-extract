-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\245b326398377\0x000004e4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.command_line == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(l_0_0.command_line)
if l_0_1:find("\\asppc.exe", 1, true) or l_0_1:find("\\ecomppc.exe", 1, true) then
  return mp.CLEAN
end
local l_0_2 = l_0_1:match("^[^%l]?([a-z]):\\")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (string.byte)(l_0_2) - (string.byte)("a")
if l_0_3 == nil or l_0_3 < 0 or l_0_3 > 26 then
  return mp.CLEAN
end
local l_0_4 = (sysio.GetLogicalDriveType)(l_0_3)
if l_0_4 ~= 4 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM(l_0_0.ppid, "T1021.002", "exec_from_remoteshare")
return mp.INFECTED

