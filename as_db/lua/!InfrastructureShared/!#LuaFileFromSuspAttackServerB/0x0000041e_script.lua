-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileFromSuspAttackServerB\0x0000041e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.IOAVGetDownloadUrl)()
if l_0_0 ~= nil and l_0_0 ~= "" then
  l_0_0 = l_0_0:lower()
  local l_0_1 = (mp.IOAVGetProcessId)()
  if not l_0_1 then
    return mp.CLEAN
  end
  local l_0_2 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  if l_0_2 == nil or l_0_2 == "" then
    return mp.CLEAN
  end
  if l_0_2:sub(1, 8) == "\\device\\" then
    l_0_2 = ((MpCommon.PathToWin32Path)(l_0_2)):lower()
  end
  TrackPidAndTechnique(l_0_1, "T1057", "ioavurl_" .. l_0_0)
  if IsHostAttackServer(l_0_0) then
    (mp.set_mpattribute)("Lua:FileFromAttackerServer")
    TT_SendBMSigTrigger(l_0_1, "file_from_attackerserver", "scenario:has_ioav_attackerurl;filepath:" .. l_0_2)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

