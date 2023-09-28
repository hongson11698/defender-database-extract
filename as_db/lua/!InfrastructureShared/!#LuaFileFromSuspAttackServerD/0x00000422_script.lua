-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileFromSuspAttackServerD\0x00000422_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
if (string.sub)(l_0_1, 1, 12) == "\\device\\mup\\" then
  if l_0_1:find("\\sysvol\\", 1, true) or l_0_1:find("\\netlogon\\", 1, true) then
    return mp.CLEAN
  end
  l_0_1 = ((MpCommon.PathToWin32Path)(l_0_1)):lower()
  TrackPidAndTechnique(l_0_0, "T1057", "remoteshare_" .. l_0_1)
  if IsHostAttackServer(l_0_1) then
    (mp.set_mpattribute)("Lua:FileFromAttackerServer")
    TT_SendBMSigTrigger(l_0_0, "file_from_attackerserver", "scenario:open_from_attackershare;filepath:" .. l_0_1)
    return mp.INFECTED
  end
end
return mp.CLEAN

