-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileFromSuspAttackServerC\0x00000421_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_REMOTE_SESSION_IP)
if l_0_0 and l_0_1 ~= "" then
  local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  if not l_0_2 then
    return mp.CLEAN
  end
  local l_0_3 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  if l_0_3 == nil or l_0_3 == "" then
    return mp.CLEAN
  end
  if l_0_3:sub(1, 8) == "\\device\\" then
    l_0_3 = ((MpCommon.PathToWin32Path)(l_0_3)):lower()
  end
  TrackPidAndTechnique(l_0_2, "T1057", "remotesrcip_" .. l_0_1)
  if IsHostAttackServer(l_0_1) then
    (mp.set_mpattribute)("Lua:FileFromAttackerServer")
    TT_SendBMSigTrigger(l_0_2, "file_from_attackerserver", "scenario:smbdrop_from_attackerserver;filepath:" .. l_0_3)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

