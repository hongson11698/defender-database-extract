-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\45b34201deb8\0x000004d2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0 ~= nil and l_0_0.command_line ~= nil then
    local l_0_1 = (string.lower)(l_0_0.command_line)
    if StringStartsWith(l_0_1, "%") then
      return mp.CLEAN
    end
    if l_0_1:find("system32\\winrshost.exe", 1, true) or l_0_1:find("syswow64\\winrshost.exe", 1, true) or l_0_1:find("-embedding", 1, true) then
      return mp.CLEAN
    end
    TrackPidAndTechniqueBM(l_0_0.ppid, "T1036", "masq_winrshost")
    return mp.INFECTED
  end
  return mp.CLEAN
end
